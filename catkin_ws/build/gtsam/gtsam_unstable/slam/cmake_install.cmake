# Install script for directory: /home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cohrint/kimera-docker/catkin_ws/devel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam_unstable/slam" TYPE FILE FILES
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/AHRS.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/BetweenFactorEM.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/BiasedGPSFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/DummyFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/EquivInertialNavFactor_GlobalVel.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/EquivInertialNavFactor_GlobalVel_NoBias.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/GaussMarkov1stOrderFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/InertialNavFactor_GlobalVelocity.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/InvDepthFactor3.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/InvDepthFactorVariant1.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/InvDepthFactorVariant2.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/InvDepthFactorVariant3.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/LocalOrientedPlane3Factor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/Mechanization_bRn2.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/MultiProjectionFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/PartialPriorFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/PoseBetweenFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/PosePriorFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/PoseToPointFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/ProjectionFactorPPP.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/ProjectionFactorPPPC.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/ProjectionFactorRollingShutter.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/RelativeElevationFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/SmartProjectionPoseFactorRollingShutter.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/SmartRangeFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/SmartStereoProjectionFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/SmartStereoProjectionFactorPP.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/SmartStereoProjectionPoseFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/TOAFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/TSAMFactors.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/TransformBtwRobotsUnaryFactor.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam_unstable/slam/TransformBtwRobotsUnaryFactorEM.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/cohrint/kimera-docker/catkin_ws/build/gtsam/gtsam_unstable/slam/tests/cmake_install.cmake")

endif()

