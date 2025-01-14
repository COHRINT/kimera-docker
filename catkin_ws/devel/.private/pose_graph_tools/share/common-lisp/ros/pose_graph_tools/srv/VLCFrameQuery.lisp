; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-srv)


;//! \htmlinclude VLCFrameQuery-request.msg.html

(cl:defclass <VLCFrameQuery-request> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (pose_ids
    :reader pose_ids
    :initarg :pose_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass VLCFrameQuery-request (<VLCFrameQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VLCFrameQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VLCFrameQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-srv:<VLCFrameQuery-request> is deprecated: use pose_graph_tools-srv:VLCFrameQuery-request instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <VLCFrameQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:robot_id-val is deprecated.  Use pose_graph_tools-srv:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'pose_ids-val :lambda-list '(m))
(cl:defmethod pose_ids-val ((m <VLCFrameQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:pose_ids-val is deprecated.  Use pose_graph_tools-srv:pose_ids instead.")
  (pose_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VLCFrameQuery-request>) ostream)
  "Serializes a message object of type '<VLCFrameQuery-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'pose_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VLCFrameQuery-request>) istream)
  "Deserializes a message object of type '<VLCFrameQuery-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VLCFrameQuery-request>)))
  "Returns string type for a service object of type '<VLCFrameQuery-request>"
  "pose_graph_tools/VLCFrameQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VLCFrameQuery-request)))
  "Returns string type for a service object of type 'VLCFrameQuery-request"
  "pose_graph_tools/VLCFrameQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VLCFrameQuery-request>)))
  "Returns md5sum for a message object of type '<VLCFrameQuery-request>"
  "a1775d31ad21123116ba0a043abbc040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VLCFrameQuery-request)))
  "Returns md5sum for a message object of type 'VLCFrameQuery-request"
  "a1775d31ad21123116ba0a043abbc040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VLCFrameQuery-request>)))
  "Returns full string definition for message of type '<VLCFrameQuery-request>"
  (cl:format cl:nil "uint32 robot_id~%uint32[] pose_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VLCFrameQuery-request)))
  "Returns full string definition for message of type 'VLCFrameQuery-request"
  (cl:format cl:nil "uint32 robot_id~%uint32[] pose_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VLCFrameQuery-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VLCFrameQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VLCFrameQuery-request
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':pose_ids (pose_ids msg))
))
;//! \htmlinclude VLCFrameQuery-response.msg.html

(cl:defclass <VLCFrameQuery-response> (roslisp-msg-protocol:ros-message)
  ((frames
    :reader frames
    :initarg :frames
    :type (cl:vector pose_graph_tools-msg:VLCFrameMsg)
   :initform (cl:make-array 0 :element-type 'pose_graph_tools-msg:VLCFrameMsg :initial-element (cl:make-instance 'pose_graph_tools-msg:VLCFrameMsg))))
)

(cl:defclass VLCFrameQuery-response (<VLCFrameQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VLCFrameQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VLCFrameQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-srv:<VLCFrameQuery-response> is deprecated: use pose_graph_tools-srv:VLCFrameQuery-response instead.")))

(cl:ensure-generic-function 'frames-val :lambda-list '(m))
(cl:defmethod frames-val ((m <VLCFrameQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:frames-val is deprecated.  Use pose_graph_tools-srv:frames instead.")
  (frames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VLCFrameQuery-response>) ostream)
  "Serializes a message object of type '<VLCFrameQuery-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frames))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VLCFrameQuery-response>) istream)
  "Deserializes a message object of type '<VLCFrameQuery-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_graph_tools-msg:VLCFrameMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VLCFrameQuery-response>)))
  "Returns string type for a service object of type '<VLCFrameQuery-response>"
  "pose_graph_tools/VLCFrameQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VLCFrameQuery-response)))
  "Returns string type for a service object of type 'VLCFrameQuery-response"
  "pose_graph_tools/VLCFrameQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VLCFrameQuery-response>)))
  "Returns md5sum for a message object of type '<VLCFrameQuery-response>"
  "a1775d31ad21123116ba0a043abbc040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VLCFrameQuery-response)))
  "Returns md5sum for a message object of type 'VLCFrameQuery-response"
  "a1775d31ad21123116ba0a043abbc040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VLCFrameQuery-response>)))
  "Returns full string definition for message of type '<VLCFrameQuery-response>"
  (cl:format cl:nil "pose_graph_tools/VLCFrameMsg[] frames~%~%================================================================================~%MSG: pose_graph_tools/VLCFrameMsg~%uint32 robot_id~%uint32 pose_id~%uint32 submap_id~%sensor_msgs/Image descriptors_mat          # Descriptor of all keypoints stored as a matrix.~%sensor_msgs/PointCloud2 versors            # Bearing vector of each keypoint expressed as a 3D vector.~%float32[] depths                           # Depth of each keypoint. The 3D keypoint v can be recovered from the depth d and bearing u by v = d * u / u[2]~%geometry_msgs/Pose T_submap_pose~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VLCFrameQuery-response)))
  "Returns full string definition for message of type 'VLCFrameQuery-response"
  (cl:format cl:nil "pose_graph_tools/VLCFrameMsg[] frames~%~%================================================================================~%MSG: pose_graph_tools/VLCFrameMsg~%uint32 robot_id~%uint32 pose_id~%uint32 submap_id~%sensor_msgs/Image descriptors_mat          # Descriptor of all keypoints stored as a matrix.~%sensor_msgs/PointCloud2 versors            # Bearing vector of each keypoint expressed as a 3D vector.~%float32[] depths                           # Depth of each keypoint. The 3D keypoint v can be recovered from the depth d and bearing u by v = d * u / u[2]~%geometry_msgs/Pose T_submap_pose~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VLCFrameQuery-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VLCFrameQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VLCFrameQuery-response
    (cl:cons ':frames (frames msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VLCFrameQuery)))
  'VLCFrameQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VLCFrameQuery)))
  'VLCFrameQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VLCFrameQuery)))
  "Returns string type for a service object of type '<VLCFrameQuery>"
  "pose_graph_tools/VLCFrameQuery")