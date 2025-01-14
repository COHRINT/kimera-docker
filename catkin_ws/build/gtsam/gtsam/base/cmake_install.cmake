# Install script for directory: /home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/base" TYPE FILE FILES
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/ConcurrentMap.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/DSFMap.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/DSFVector.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/FastDefaultAllocator.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/FastList.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/FastMap.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/FastSet.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/FastVector.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/GenericValue.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/Group.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/Lie.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/LieMatrix.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/LieScalar.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/LieVector.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/Manifold.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/Matrix.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/OptionalJacobian.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/ProductLieGroup.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/SymmetricBlockMatrix.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/Testable.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/TestableAssertions.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/ThreadsafeException.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/Value.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/Vector.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/VectorSpace.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/VerticalBlockMatrix.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/WeightedSampler.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/chartTesting.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/cholesky.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/concepts.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/debug.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/lieProxies.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/make_shared.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/numericalDerivative.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/serialization.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/serializationTestHelpers.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/testLie.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/timing.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/treeTraversal-inst.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/types.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/utilities.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/base/treeTraversal" TYPE FILE FILES
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/treeTraversal/parallelTraversalTasks.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/treeTraversal/statistics.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/base/deprecated" TYPE FILE FILES
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/deprecated/LieMatrix.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/deprecated/LieScalar.h"
    "/home/cohrint/kimera-docker/catkin_ws/src/gtsam/gtsam/base/deprecated/LieVector.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/cohrint/kimera-docker/catkin_ws/build/gtsam/gtsam/base/tests/cmake_install.cmake")

endif()

