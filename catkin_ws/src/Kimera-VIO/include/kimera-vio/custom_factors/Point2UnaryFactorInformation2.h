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


class Point2UnaryFactorInformation2 : public gtsam::NoiseModelFactor1<gtsam::Pose3> {
private:
    // Measurement data (for example, the constraint in x and y)
    gtsam::Vector2 infoVec_;
    gtsam::Matrix infoMat_;

public:
    Point2UnaryFactorInformation2(gtsam::Key poseKey, const gtsam::Matrix & infoMat,
                  const gtsam::Vector& infoVec):
          gtsam::NoiseModelFactor1<gtsam::Pose3>(gtsam::noiseModel::Gaussian::Information(gtsam::Matrix1::Identity()), poseKey),
          infoVec_(infoVec),
          infoMat_(infoMat) {} 
          

    // Error function
    gtsam::Vector evaluateError(const gtsam::Pose3& pose, boost::optional<gtsam::Matrix&> H = boost::none) const override {
        // Extract x and y components from Pose3
        
        gtsam::Vector2 pose_xy = pose.translation().head<2>();

        std::cout << "\nIn factor:" << std::endl;
            
        std::cout << "\nm =" << std::endl << pose_xy << std::endl;


        gtsam::Vector1 error = pose_xy.transpose() * infoMat_ * pose_xy-2*pose_xy.transpose() * infoVec_+infoVec_.transpose()*infoMat_.inverse()*infoVec_;  
        std::cout << "\nerror =" << std::endl << error << std::endl;
        
        gtsam::Vector2 Jac = (infoMat_ * pose_xy - infoVec_) ;


        if (H) {
            gtsam::Matrix H_1x6 = gtsam::Matrix::Zero(1, 6);
            H_1x6(0,3) = Jac[0];
            H_1x6(0,4) = Jac[1];
            // H_1x6.block<1, 2>(0, 3) = (infoMat_ * pose_xy - infoVec_).transpose();
            *H = H_1x6;
        }                      
        
        return error;
    }
}; 

} // namespace VIO