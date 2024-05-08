// A bunch of these include statements are extraneous and don't need to be included
#include <gtsam/geometry/Rot3.h>
#include <gtsam/geometry/Pose3.h>
#include <gtsam/slam/PriorFactor.h>
#include <gtsam/slam/BetweenFactor.h>
#include <gtsam/navigation/GPSFactor.h>
#include <gtsam/navigation/ImuFactor.h>
#include <gtsam/navigation/CombinedImuFactor.h>
#include <gtsam/nonlinear/NonlinearFactorGraph.h>
#include <gtsam/nonlinear/LevenbergMarquardtOptimizer.h>
#include <gtsam/nonlinear/Marginals.h>
#include <gtsam/nonlinear/Values.h>
#include <gtsam/inference/Symbol.h>
#include <gtsam/base/Matrix.h>
#include <gtsam/base/Vector.h>
#include <gtsam/nonlinear/NonlinearFactor.h>
#include <gtsam/geometry/Pose2.h>
#include <gtsam/linear/NoiseModel.h>
#include <gtsam/nonlinear/LinearContainerFactor.h>

namespace VIO {

class Point2UnaryFactorInformation : public gtsam::NoiseModelFactor1<gtsam::Pose3> {
private:
    // Measurement data (for example, the constraint in x and y)
    gtsam::Vector2 infoVec_;
    gtsam::Matrix infoMat_;

public:
    Point2UnaryFactorInformation(gtsam::Key poseKey, const gtsam::Matrix & infoMat,
                  const gtsam::Vector& infoVec):
        // : gtsam::NoiseModelFactor1<gtsam::Pose3>(gtsam::noiseModel::Gaussian::Information::From(information), poseKey),
        //   gtsam::NoiseModelFactor1<gtsam::Pose3>(infoMat, poseKey), 
          gtsam::NoiseModelFactor1<gtsam::Pose3>(gtsam::noiseModel::Gaussian::Information(infoMat), poseKey),
          infoVec_(infoVec),
          infoMat_(infoMat) {} 
          

    // Error function
    gtsam::Vector evaluateError(const gtsam::Pose3& pose, boost::optional<gtsam::Matrix&> H = boost::none) const override {
        // Extract x and y components from Pose3
        
        gtsam::Vector2 pose_xy = pose.translation().head<2>();

        std::cout << "\nIn factor:" << std::endl;
            
        std::cout << "\nm =" << std::endl << pose_xy << std::endl;

        gtsam::Vector2 error;

        gtsam::Vector e1_vec = pose_xy.transpose() * infoMat_ * pose_xy-2*pose_xy.transpose() * infoVec_;  

        double e1 = e1_vec.norm();
        // double sqrt_e1 = std::sqrt(0.5 * e1);     
        
        error[0] = std::sqrt(0.5 * e1);
        error[1] = std::sqrt(0.5 * e1);
        

        if (H)  *H = (gtsam::Matrix26() << 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 
                                          0.0, 0.0, 0.0, 0.0, 1.0, 0.0).finished();
        

        return error;
    }
};

} // namespace VIO