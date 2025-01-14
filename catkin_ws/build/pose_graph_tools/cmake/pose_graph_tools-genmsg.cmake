# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pose_graph_tools: 13 messages, 3 services")

set(MSG_I_FLAGS "-Ipose_graph_tools:/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg;-Iroscpp:/opt/ros/noetic/share/roscpp/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pose_graph_tools_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg" "std_msgs/Header:pose_graph_tools/BowVector:pose_graph_tools/BowQuery"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg" "pose_graph_tools/BowVector"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg" ""
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:pose_graph_tools/PoseGraphEdge:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg" ""
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:pose_graph_tools/PoseGraphEdge:pose_graph_tools/PoseGraphNode:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg" "std_msgs/Header:sensor_msgs/Image:geometry_msgs/Pose:geometry_msgs/Point:sensor_msgs/PointField:geometry_msgs/Quaternion:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg" "std_msgs/Header:pose_graph_tools/VLCFrameMsg:sensor_msgs/Image:geometry_msgs/Pose:geometry_msgs/Point:sensor_msgs/PointField:geometry_msgs/Quaternion:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv" "pose_graph_tools/PoseGraph:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:pose_graph_tools/PoseGraphEdge:pose_graph_tools/PoseGraphNode:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv" NAME_WE)
add_custom_target(_pose_graph_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_tools" "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv" "std_msgs/Header:sensor_msgs/Image:pose_graph_tools/VLCFrameMsg:geometry_msgs/Pose:geometry_msgs/Point:sensor_msgs/PointField:geometry_msgs/Quaternion:sensor_msgs/PointCloud2"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)

### Generating Services
_generate_srv_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_cpp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
)

### Generating Module File
_generate_module_cpp(pose_graph_tools
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pose_graph_tools_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pose_graph_tools_generate_messages pose_graph_tools_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_cpp _pose_graph_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_tools_gencpp)
add_dependencies(pose_graph_tools_gencpp pose_graph_tools_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_tools_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)

### Generating Services
_generate_srv_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_eus(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
)

### Generating Module File
_generate_module_eus(pose_graph_tools
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pose_graph_tools_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pose_graph_tools_generate_messages pose_graph_tools_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_eus _pose_graph_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_tools_geneus)
add_dependencies(pose_graph_tools_geneus pose_graph_tools_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_tools_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)

### Generating Services
_generate_srv_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_lisp(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
)

### Generating Module File
_generate_module_lisp(pose_graph_tools
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pose_graph_tools_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pose_graph_tools_generate_messages pose_graph_tools_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_lisp _pose_graph_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_tools_genlisp)
add_dependencies(pose_graph_tools_genlisp pose_graph_tools_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_tools_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)

### Generating Services
_generate_srv_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_nodejs(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
)

### Generating Module File
_generate_module_nodejs(pose_graph_tools
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pose_graph_tools_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pose_graph_tools_generate_messages pose_graph_tools_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_nodejs _pose_graph_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_tools_gennodejs)
add_dependencies(pose_graph_tools_gennodejs pose_graph_tools_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_tools_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_msg_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)

### Generating Services
_generate_srv_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv"
  "${MSG_I_FLAGS}"
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)
_generate_srv_py(pose_graph_tools
  "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
)

### Generating Module File
_generate_module_py(pose_graph_tools
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pose_graph_tools_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pose_graph_tools_generate_messages pose_graph_tools_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQueries.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/BowVector.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosures.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/LoopClosuresAck.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/TimeRangeQuery.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrameMsg.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCFrames.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/msg/VLCRequests.msg" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/LcdFrameRegistration.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/PoseGraphQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cohrint/kimera-docker/catkin_ws/src/pose_graph_tools/srv/VLCFrameQuery.srv" NAME_WE)
add_dependencies(pose_graph_tools_generate_messages_py _pose_graph_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_tools_genpy)
add_dependencies(pose_graph_tools_genpy pose_graph_tools_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_tools_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_tools
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(pose_graph_tools_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pose_graph_tools_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pose_graph_tools_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pose_graph_tools_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(pose_graph_tools_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_tools
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_eus)
  add_dependencies(pose_graph_tools_generate_messages_eus roscpp_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pose_graph_tools_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pose_graph_tools_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(pose_graph_tools_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(pose_graph_tools_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_tools
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(pose_graph_tools_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pose_graph_tools_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pose_graph_tools_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pose_graph_tools_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(pose_graph_tools_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_tools
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_nodejs)
  add_dependencies(pose_graph_tools_generate_messages_nodejs roscpp_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pose_graph_tools_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pose_graph_tools_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(pose_graph_tools_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(pose_graph_tools_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_tools
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(pose_graph_tools_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pose_graph_tools_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pose_graph_tools_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pose_graph_tools_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(pose_graph_tools_generate_messages_py visualization_msgs_generate_messages_py)
endif()
