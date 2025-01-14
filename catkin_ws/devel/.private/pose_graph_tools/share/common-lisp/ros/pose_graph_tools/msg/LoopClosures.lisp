; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude LoopClosures.msg.html

(cl:defclass <LoopClosures> (roslisp-msg-protocol:ros-message)
  ((publishing_robot_id
    :reader publishing_robot_id
    :initarg :publishing_robot_id
    :type cl:fixnum
    :initform 0)
   (destination_robot_id
    :reader destination_robot_id
    :initarg :destination_robot_id
    :type cl:fixnum
    :initform 0)
   (edges
    :reader edges
    :initarg :edges
    :type (cl:vector pose_graph_tools-msg:PoseGraphEdge)
   :initform (cl:make-array 0 :element-type 'pose_graph_tools-msg:PoseGraphEdge :initial-element (cl:make-instance 'pose_graph_tools-msg:PoseGraphEdge))))
)

(cl:defclass LoopClosures (<LoopClosures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopClosures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopClosures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<LoopClosures> is deprecated: use pose_graph_tools-msg:LoopClosures instead.")))

(cl:ensure-generic-function 'publishing_robot_id-val :lambda-list '(m))
(cl:defmethod publishing_robot_id-val ((m <LoopClosures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:publishing_robot_id-val is deprecated.  Use pose_graph_tools-msg:publishing_robot_id instead.")
  (publishing_robot_id m))

(cl:ensure-generic-function 'destination_robot_id-val :lambda-list '(m))
(cl:defmethod destination_robot_id-val ((m <LoopClosures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:destination_robot_id-val is deprecated.  Use pose_graph_tools-msg:destination_robot_id instead.")
  (destination_robot_id m))

(cl:ensure-generic-function 'edges-val :lambda-list '(m))
(cl:defmethod edges-val ((m <LoopClosures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:edges-val is deprecated.  Use pose_graph_tools-msg:edges instead.")
  (edges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopClosures>) ostream)
  "Serializes a message object of type '<LoopClosures>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'publishing_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'publishing_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopClosures>) istream)
  "Deserializes a message object of type '<LoopClosures>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'publishing_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'publishing_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_graph_tools-msg:PoseGraphEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopClosures>)))
  "Returns string type for a message object of type '<LoopClosures>"
  "pose_graph_tools/LoopClosures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosures)))
  "Returns string type for a message object of type 'LoopClosures"
  "pose_graph_tools/LoopClosures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopClosures>)))
  "Returns md5sum for a message object of type '<LoopClosures>"
  "4f4b270327fa0c480a57687e4837bab6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopClosures)))
  "Returns md5sum for a message object of type 'LoopClosures"
  "4f4b270327fa0c480a57687e4837bab6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopClosures>)))
  "Returns full string definition for message of type '<LoopClosures>"
  (cl:format cl:nil "uint16 publishing_robot_id~%uint16 destination_robot_id~%pose_graph_tools/PoseGraphEdge[] edges~%================================================================================~%MSG: pose_graph_tools/PoseGraphEdge~%Header header~%~%uint64 key_from~%uint64 key_to~%~%int32 robot_from~%int32 robot_to~%~%int32 type~%~%# Type enums~%int32 ODOM      = 0~%int32 LOOPCLOSE = 1~%int32 LANDMARK  = 2~%int32 REJECTED_LOOPCLOSE = 3~%int32 MESH = 4~%int32 POSE_MESH = 5~%int32 MESH_POSE = 6~%~%# Transforms in ede~%geometry_msgs/Pose pose~%float64[36] covariance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopClosures)))
  "Returns full string definition for message of type 'LoopClosures"
  (cl:format cl:nil "uint16 publishing_robot_id~%uint16 destination_robot_id~%pose_graph_tools/PoseGraphEdge[] edges~%================================================================================~%MSG: pose_graph_tools/PoseGraphEdge~%Header header~%~%uint64 key_from~%uint64 key_to~%~%int32 robot_from~%int32 robot_to~%~%int32 type~%~%# Type enums~%int32 ODOM      = 0~%int32 LOOPCLOSE = 1~%int32 LANDMARK  = 2~%int32 REJECTED_LOOPCLOSE = 3~%int32 MESH = 4~%int32 POSE_MESH = 5~%int32 MESH_POSE = 6~%~%# Transforms in ede~%geometry_msgs/Pose pose~%float64[36] covariance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopClosures>))
  (cl:+ 0
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopClosures>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopClosures
    (cl:cons ':publishing_robot_id (publishing_robot_id msg))
    (cl:cons ':destination_robot_id (destination_robot_id msg))
    (cl:cons ':edges (edges msg))
))
