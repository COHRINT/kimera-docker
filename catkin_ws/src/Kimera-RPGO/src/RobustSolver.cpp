/*
Robust solver class
author: Yun Chang, Luca Carlone
*/

#include "KimeraRPGO/RobustSolver.h"

#include <chrono>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>
#include<unistd.h>

#include "ros/ros.h"
#include "lio_sam/ChannelFilter.h"
#include "lio_sam/SLAMRequest.h"

#include <gtsam/inference/inferenceExceptions.h>
#include <gtsam/nonlinear/DoglegOptimizer.h>
#include <gtsam/nonlinear/GaussNewtonOptimizer.h>
#include <gtsam/nonlinear/GncOptimizer.h>
#include <gtsam/nonlinear/LevenbergMarquardtOptimizer.h>
#include <gtsam/slam/dataset.h>
#include <gtsam/geometry/Pose3.h>
#include <gtsam/nonlinear/Marginals.h>

#include "KimeraRPGO/Logger.h"
#include "KimeraRPGO/outlier/Pcm.h"
#include "KimeraRPGO/utils/TypeUtils.h"

namespace KimeraRPGO {

typedef std::pair<gtsam::NonlinearFactorGraph, gtsam::Values> GraphAndValues;

RobustSolver::RobustSolver(const RobustSolverParams& params)
    : GenericSolver(params.solver, params.specialSymbols),
      gnc_weights_(),
      gnc_num_inliers_(0),
      latest_num_lc_(0),
      params_(params) {
  switch (params.outlierRemovalMethod) {
    case OutlierRemovalMethod::NONE: {
      outlier_removal_ =
          nullptr;  // only returns optimize true or optimize false
    } break;
    case OutlierRemovalMethod::PCM2D: {
      outlier_removal_ =
          KimeraRPGO::make_unique<Pcm2D>(params.pcm_params,
                                         params.multirobot_align_method,
                                         params.specialSymbols);
    } break;
    case OutlierRemovalMethod::PCM3D: {
      outlier_removal_ =
          KimeraRPGO::make_unique<Pcm3D>(params.pcm_params,
                                         params.multirobot_align_method,
                                         params.specialSymbols);
    } break;
    case OutlierRemovalMethod::PCM_Simple2D: {
      outlier_removal_ =
          KimeraRPGO::make_unique<PcmSimple2D>(params.pcm_params,
                                               params.multirobot_align_method,
                                               params.specialSymbols);
    } break;
    case OutlierRemovalMethod::PCM_Simple3D: {
      outlier_removal_ =
          KimeraRPGO::make_unique<PcmSimple3D>(params.pcm_params,
                                               params.multirobot_align_method,
                                               params.specialSymbols);
    } break;
    default: {
      log<WARNING>("Undefined outlier removal method");
      exit(EXIT_FAILURE);
    }
  }

  // toggle verbosity
  switch (params.verbosity) {
    case Verbosity::UPDATE: {
      if (outlier_removal_) outlier_removal_->setQuiet();
    } break;
    case Verbosity::QUIET: {
      if (outlier_removal_)
        outlier_removal_->setQuiet();  // set outlier removal quiet
      setQuiet();                      // set solver quiet
    } break;
    case Verbosity::VERBOSE: {
      log<INFO>("Starting RobustSolver.");
    } break;
    default: {
      log<WARNING>("Unrecognized verbosity. Automatically setting to UPDATE. ");
    }
  }

  // set log output
  if (params.log_output) {
    if (outlier_removal_) outlier_removal_->logOutput(params.log_folder);
    log_ = true;
    log_folder_ = params.log_folder;
    std::string filename = log_folder_ + "/rpgo_status.csv";
    std::ofstream outfile;
    outfile.open(filename);
    outfile << "graph-size,spin-time(mu-s),num-lc,num-inliers\n";
    outfile.close();
  }

  ros::NodeHandle nh;
  pubCF = nh.advertise<lio_sam::ChannelFilter>("SLAM_CF_chatter", 1);
}

void RobustSolver::getGncKnownInliers(InlierVectorType* known_inliers) {
  size_t num_odom_factors = outlier_removal_->getNumOdomFactors();
  size_t num_special_factors = outlier_removal_->getNumSpecialFactors();
  // Set odometry and special factors as known inliers
  known_inliers->resize(num_odom_factors + num_special_factors);
  std::iota(std::begin(*known_inliers),
            std::begin(*known_inliers) + num_odom_factors + num_special_factors,
            0);
}

void RobustSolver::optimize() {
  gtsam::Values result;
  gtsam::Values full_values = values_;
  gtsam::NonlinearFactorGraph full_nfg = nfg_;
  // Merge in temporary values and factors
  full_values.insert(temp_values_);
  full_nfg.add(temp_nfg_);

  if (solver_type_ == Solver::LM) {
    gtsam::LevenbergMarquardtParams lmParams;
    lmParams.diagonalDamping = params_.lm_diagonal_damping;
    if (debug_) {
      lmParams.setVerbosityLM("SUMMARY");
      log<INFO>("Running LM");
    }
    if (params_.use_gnc_ && outlier_removal_ &&
        !(params_.gnc_params.fix_prev_inliers_ &&
          outlier_removal_->getNumLC() == latest_num_lc_)) {
      gtsam::GncParams<gtsam::LevenbergMarquardtParams> gncParams(lmParams);
      InlierVectorType known_inlier_factor_indices;
      getGncKnownInliers(&known_inlier_factor_indices);
      gncParams.setKnownInliers(known_inlier_factor_indices);
      gncParams.setMaxIterations(params_.gnc_params.max_iterations_);
      gncParams.setMuStep(params_.gnc_params.mu_step_);
      gncParams.setRelativeCostTol(params_.gnc_params.relative_cost_tol_);
      gncParams.setWeightsTol(params_.gnc_params.weights_tol_);
      // Create GNC optimizer
      gtsam::GncOptimizer<gtsam::GncParams<gtsam::LevenbergMarquardtParams> >
          gnc_optimizer(full_nfg, full_values, gncParams);
      if (params_.gnc_params.bias_odom_) {
        // Set initial weights to bias odom
        gtsam::Vector init_weights = Eigen::VectorXd::Zero(full_nfg.size());
        for (const auto& ind : known_inlier_factor_indices) {
          init_weights(ind) = 1;
        }
        gnc_optimizer.setWeights(init_weights);
      }
      switch (params_.gnc_params.gnc_threshold_mode_) {
        case (GncParams::GncThresholdMode::COST):
          gnc_optimizer.setInlierCostThresholds(
              params_.gnc_params.gnc_inlier_threshold_);
          break;
        case (GncParams::GncThresholdMode::PROBABILITY):
          gnc_optimizer.setInlierCostThresholdsAtProbability(
              params_.gnc_params.gnc_inlier_threshold_);
          break;
        default:
          log<WARNING>("Unsupported GNC threshold mode. ");
      }
      // Optimize and get weights
      auto opt_start_t = std::chrono::high_resolution_clock::now();
      result = gnc_optimizer.optimize();
      gtsam::Vector gnc_all_weights = gnc_optimizer.getWeights();
      gnc_weights_ = gnc_all_weights.head(nfg_.size());
      gnc_num_inliers_ = static_cast<size_t>(gnc_all_weights.sum()) -
                         known_inlier_factor_indices.size() - temp_nfg_.size();
      auto opt_stop_t = std::chrono::high_resolution_clock::now();
      auto opt_duration = std::chrono::duration_cast<std::chrono::milliseconds>(
          opt_stop_t - opt_start_t);
      if (debug_) {
        log<INFO>(
            "GNC optimize took %1% milliseconds. %2% loop closures with "
            "%3% inliers. ") %
            opt_duration.count() % outlier_removal_->getNumLCInliers() %
            gnc_num_inliers_;
      }
    } else {
      auto opt_start_t = std::chrono::high_resolution_clock::now();
      if (params_.gnc_params.fix_prev_inliers_) {
        // TODO(yun) clean up
        // remove gnc inliers from previous iterations
        size_t prev_k = gnc_weights_.size() - latest_num_lc_;
        size_t k = outlier_removal_->getNumOdomFactors() +
                   outlier_removal_->getNumSpecialFactors();
        full_nfg = gtsam::NonlinearFactorGraph(nfg_.begin(), nfg_.begin() + k);
        for (size_t i = 0; i < latest_num_lc_; i++) {
          if (gnc_weights_(prev_k + i) > 0.5) {
            full_nfg.add(nfg_.at(k + i));
          }
        }
        full_nfg.add(temp_nfg_);
      }
      result =
          gtsam::LevenbergMarquardtOptimizer(full_nfg, full_values, lmParams)
              .optimize();
      auto opt_stop_t = std::chrono::high_resolution_clock::now();
      auto opt_duration = std::chrono::duration_cast<std::chrono::milliseconds>(
          opt_stop_t - opt_start_t);
      if (debug_) {
        log<INFO>(
            "Optimize took %1% milliseconds. %2% loop closures with "
            "%3% inliers. ") %
            opt_duration.count() % outlier_removal_->getNumLC() %
            getNumLCInliers();
      }
    }
  } else if (solver_type_ == Solver::GN) {
    gtsam::GaussNewtonParams gnParams;
    if (debug_) {
      gnParams.setVerbosity("ERROR");
      log<INFO>("Running GN");
    }
    if (params_.use_gnc_ && outlier_removal_) {
      gtsam::GncParams<gtsam::GaussNewtonParams> gncParams(gnParams);
      InlierVectorType known_inlier_factor_indices;
      getGncKnownInliers(&known_inlier_factor_indices);
      gncParams.setKnownInliers(known_inlier_factor_indices);
      gncParams.setMaxIterations(params_.gnc_params.max_iterations_);
      gncParams.setMuStep(params_.gnc_params.mu_step_);
      gncParams.setRelativeCostTol(params_.gnc_params.relative_cost_tol_);
      gncParams.setWeightsTol(params_.gnc_params.weights_tol_);
      // Create GNC optimizer
      gtsam::GncOptimizer<gtsam::GncParams<gtsam::GaussNewtonParams> >
          gnc_optimizer(full_nfg, full_values, gncParams);
      if (params_.gnc_params.bias_odom_) {
        // Set initial weights to bias odom
        gtsam::Vector init_weights = Eigen::VectorXd::Zero(full_nfg.size());
        for (const auto& ind : known_inlier_factor_indices) {
          init_weights(ind) = 1;
        }
        gnc_optimizer.setWeights(init_weights);
      }
      switch (params_.gnc_params.gnc_threshold_mode_) {
        case (GncParams::GncThresholdMode::COST):
          gnc_optimizer.setInlierCostThresholds(
              params_.gnc_params.gnc_inlier_threshold_);
          break;
        case (GncParams::GncThresholdMode::PROBABILITY):
          gnc_optimizer.setInlierCostThresholdsAtProbability(
              params_.gnc_params.gnc_inlier_threshold_);
          break;
        default:
          log<WARNING>("Unsupported GNC threshold mode. ");
      }
      // Optimize and get weights
      auto opt_start_t = std::chrono::high_resolution_clock::now();
      result = gnc_optimizer.optimize();
      gtsam::Vector gnc_all_weights = gnc_optimizer.getWeights();
      gnc_weights_ = gnc_all_weights.head(nfg_.size());
      gnc_num_inliers_ = static_cast<size_t>(gnc_all_weights.sum()) -
                         known_inlier_factor_indices.size();
      auto opt_stop_t = std::chrono::high_resolution_clock::now();
      auto opt_duration = std::chrono::duration_cast<std::chrono::milliseconds>(
          opt_stop_t - opt_start_t);
      if (debug_) {
        log<INFO>(
            "GNC optimize took %1% milliseconds. %2% loop closures with "
            "%3% inliers. ") %
            opt_duration.count() % outlier_removal_->getNumLCInliers() %
            gnc_num_inliers_;
      }
    } else {
      result = gtsam::GaussNewtonOptimizer(full_nfg, full_values, gnParams)
                   .optimize();
    }

  } else {
    log<WARNING>("Unsupported Solver");
    exit(EXIT_FAILURE);
  }
  updateValues(result);
  if (outlier_removal_) {
    latest_num_lc_ = outlier_removal_->getNumLC();
  }
}

void RobustSolver::forceUpdate(const gtsam::NonlinearFactorGraph& nfg,
                               const gtsam::Values& values) {
  // Start timer
  auto start = std::chrono::high_resolution_clock::now();
  if (outlier_removal_) {
    outlier_removal_->removeOutliers(nfg, values, &nfg_, &values_);
  } else {
    addAndCheckIfOptimize(nfg, values);
  }
  // optimize
  optimize();

  // Stop timer and save
  auto stop = std::chrono::high_resolution_clock::now();
  auto spin_time =
      std::chrono::duration_cast<std::chrono::microseconds>(stop - start);

  // Log status
  if (log_) {
    std::string filename = log_folder_ + "/rpgo_status.csv";
    std::ofstream outfile;
    outfile.open(filename, std::ofstream::out | std::ofstream::app);
    outfile << nfg_.size() << "," << spin_time.count() << "," << getNumLC()
            << "," << getNumLCInliers() << std::endl;
    outfile.close();
    saveData(log_folder_);
  }
}

void RobustSolver::update(const gtsam::NonlinearFactorGraph& factors,
                          const gtsam::Values& values,
                          bool optimize_graph) {
  
  static int timeStep = 0;
  std::vector<short int> key_idx{-1};
  std::cout << "k = " << timeStep << endl;
  if (timeStep != 0) {
      std::cout << "Waiting for communication from tracking algo..." << endl;
      boost::shared_ptr<int const> req;
      boost::shared_ptr<lio_sam::SLAMRequest const> requested_factors;
      requested_factors = ros::topic::waitForMessage<lio_sam::SLAMRequest>("SLAM_chatter");
      key_idx = (*requested_factors).timeSteps;
      requested_factors = NULL;
      std::cout << "Receieved communication from tracking algo..." << endl;
  }
  if (key_idx.at(0) == -1) {
      std::cout << "Factor NOT requested by tracking algo..." << endl;
  }
  // timeStep++;

  // Start timer
  auto start = std::chrono::high_resolution_clock::now();

  bool do_optimize;
  if (outlier_removal_) {
    do_optimize =
        outlier_removal_->removeOutliers(factors, values, &nfg_, &values_);
  } else {
    do_optimize = addAndCheckIfOptimize(factors, values);
  }

  if (do_optimize & optimize_graph) optimize();  // optimize once after loading

  // Stop timer and save
  auto stop = std::chrono::high_resolution_clock::now();
  auto spin_time =
      std::chrono::duration_cast<std::chrono::microseconds>(stop - start);

  nfg_.print();

  if (key_idx.at(0) != -1) { // Only send factors if data was requested by tracking algorithm
    std::cout << "Factors requested by tracking algo..." << endl;
    // Extract vector of keys and "reset" it to be empty
    gtsam::KeyVector cur_keys = values_.keys();
    int num_keys = cur_keys.size();
    cur_keys.erase(cur_keys.begin(),cur_keys.end());



    // Only save specified keys
    for (int i = 0; i < num_keys; i++) {
        for (int j = 0; j < key_idx.size(); j++) {
            if (i == key_idx.at(j)) {
                cur_keys.push_back(i);
                break;
            }
        }
    }
    if (!cur_keys.empty()) {
      // create instance of marginals class
      // gtsam::Marginals curMarginal(isam->getFactorsUnsafe(), isamCurrentEstimate, gtsam::Marginals::Factorization::CHOLESKY);

      gtsam::Marginals curMarginal(nfg_, values_);

      cout << "****************************************************" << endl;
      cout << "Tracking Algorithm Requested Factor for Time Steps: ";
      for (int i =0; i < cur_keys.size(); i++) {
          cout << cur_keys.at(i) << " ";
      }
      cout << endl;
      // curMarginal.print();

      // compute joint marginal covariance
      gtsam::JointMarginal curJointMarginal = curMarginal.jointMarginalCovariance(cur_keys);

      // // compute joint marginal information
      gtsam::JointMarginal curJointInformation = curMarginal.jointMarginalInformation(cur_keys);

      // generate joint information matrix
      gtsam::Matrix curJointInformationMatrix = curJointInformation.fullMatrix();

      // Initialize CF message
      // lio_sam::factors factors; // Deprecated
      lio_sam::ChannelFilter CF;

      // Add information matrix to CF message
      for (int i = 0; i < curJointInformationMatrix.rows(); i++) {
          for (int j = 0; j < curJointInformationMatrix.cols(); j++) {
              CF.infMat.push_back(curJointInformationMatrix(i,j));
          }
      }
      
      // Add dimension of information matrix to CF message
      CF.matrixDim = curJointInformationMatrix.rows();


      // Add means to CF message
      for (int i = 0; i < cur_keys.size(); i++) {
          gtsam::Pose3 curEstimate = values_.at<gtsam::Pose3>(cur_keys.at(i));
          CF.infVec.push_back(curEstimate.rotation().roll());
          CF.infVec.push_back(curEstimate.rotation().pitch());
          CF.infVec.push_back(curEstimate.rotation().yaw());
          CF.infVec.push_back(curEstimate.translation().x());
          CF.infVec.push_back(curEstimate.translation().y());
          CF.infVec.push_back(curEstimate.translation().z());
      }

      // Add the number of means to ROS message
      // factors.numMeans = cur_keys.size();

      // Publish CF message
      std::cout << "Sending data to tracking algorithm..." << endl;
      ros::Duration(1.0).sleep();
      pubCF.publish(CF);
    }
  }

  // Log status
  if (log_ && optimize_graph) {
    std::string filename = log_folder_ + "/rpgo_status.csv";
    std::ofstream outfile;
    outfile.open(filename, std::ofstream::out | std::ofstream::app);
    outfile << nfg_.size() << "," << spin_time.count() << "," << getNumLC()
            << "," << getNumLCInliers() << std::endl;
    outfile.close();
    saveData(log_folder_);
  }
  return;
}

void RobustSolver::removePriorFactorsWithPrefix(const char& prefix,
                                                bool optimize_graph) {
  if (outlier_removal_) {
    // removing loop closure so values should not change
    outlier_removal_->removePriorFactorsWithPrefix(prefix, &nfg_);
  } else {
    removePriorsWithPrefix(prefix);
  }
  if (optimize_graph) optimize();
  return;
}

EdgePtr RobustSolver::removeLastLoopClosure(char prefix_1, char prefix_2) {
  ObservationId id(prefix_1, prefix_2);
  EdgePtr removed_edge;
  if (outlier_removal_) {
    // removing loop closure so values should not change
    removed_edge = outlier_removal_->removeLastLoopClosure(id, &nfg_);
  } else {
    removed_edge = removeLastFactor();
  }

  optimize();
  return removed_edge;
}

EdgePtr RobustSolver::removeLastLoopClosure() {
  EdgePtr removed_edge;
  if (outlier_removal_) {
    // removing loop closure so values should not change
    removed_edge = outlier_removal_->removeLastLoopClosure(&nfg_);
  } else {
    removed_edge = removeLastFactor();
  }

  optimize();
  return removed_edge;
}

void RobustSolver::ignorePrefix(char prefix) {
  if (outlier_removal_) {
    outlier_removal_->ignoreLoopClosureWithPrefix(prefix, &nfg_);
  } else {
    log<WARNING>(
        "'ignorePrefix' currently not implemented for no outlier rejection "
        "case");
  }

  optimize();
  return;
}

void RobustSolver::revivePrefix(char prefix) {
  if (outlier_removal_) {
    outlier_removal_->reviveLoopClosureWithPrefix(prefix, &nfg_);
  } else {
    log<WARNING>(
        "'revivePrefix' and 'ignorePrefix' currently not implemented for no "
        "outlier rejection case");
  }

  optimize();
  return;
}

std::vector<char> RobustSolver::getIgnoredPrefixes() {
  if (outlier_removal_) {
    return outlier_removal_->getIgnoredPrefixes();
  } else {
    log<WARNING>(
        "'revivePrefix' and 'ignorePrefix' currently not implemented for no "
        "outlier rejection case");
  }
  std::vector<char> empty;
  return empty;
}

void RobustSolver::saveData(std::string folder_path) const {
  std::string g2o_file_path = folder_path + "/result.g2o";
  KimeraRPGO::writeG2o(nfg_, values_, g2o_file_path);
  if (outlier_removal_) {
    outlier_removal_->saveData(folder_path);
  }

  std::string gnc_weights_file = folder_path + "/gnc_weights.csv";
  if (params_.use_gnc_) {
    const static Eigen::IOFormat CSVFormat(
        Eigen::FullPrecision, Eigen::DontAlignCols, ", ", "\n");
    std::ofstream gnc_file(gnc_weights_file);
    if (gnc_file.is_open()) {
      gnc_file << gnc_weights_.format(CSVFormat);
      gnc_file.close();
    }
  }
}

}  // namespace KimeraRPGO
