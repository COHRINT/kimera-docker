; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude PoseGraphEdge.msg.html

(cl:defclass <PoseGraphEdge> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (key_from
    :reader key_from
    :initarg :key_from
    :type cl:integer
    :initform 0)
   (key_to
    :reader key_to
    :initarg :key_to
    :type cl:integer
    :initform 0)
   (robot_from
    :reader robot_from
    :initarg :robot_from
    :type cl:integer
    :initform 0)
   (robot_to
    :reader robot_to
    :initarg :robot_to
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PoseGraphEdge (<PoseGraphEdge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseGraphEdge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseGraphEdge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<PoseGraphEdge> is deprecated: use pose_graph_tools-msg:PoseGraphEdge instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:header-val is deprecated.  Use pose_graph_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'key_from-val :lambda-list '(m))
(cl:defmethod key_from-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:key_from-val is deprecated.  Use pose_graph_tools-msg:key_from instead.")
  (key_from m))

(cl:ensure-generic-function 'key_to-val :lambda-list '(m))
(cl:defmethod key_to-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:key_to-val is deprecated.  Use pose_graph_tools-msg:key_to instead.")
  (key_to m))

(cl:ensure-generic-function 'robot_from-val :lambda-list '(m))
(cl:defmethod robot_from-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:robot_from-val is deprecated.  Use pose_graph_tools-msg:robot_from instead.")
  (robot_from m))

(cl:ensure-generic-function 'robot_to-val :lambda-list '(m))
(cl:defmethod robot_to-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:robot_to-val is deprecated.  Use pose_graph_tools-msg:robot_to instead.")
  (robot_to m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:type-val is deprecated.  Use pose_graph_tools-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:pose-val is deprecated.  Use pose_graph_tools-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:covariance-val is deprecated.  Use pose_graph_tools-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PoseGraphEdge>)))
    "Constants for message type '<PoseGraphEdge>"
  '((:ODOM . 0)
    (:LOOPCLOSE . 1)
    (:LANDMARK . 2)
    (:REJECTED_LOOPCLOSE . 3)
    (:MESH . 4)
    (:POSE_MESH . 5)
    (:MESH_POSE . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PoseGraphEdge)))
    "Constants for message type 'PoseGraphEdge"
  '((:ODOM . 0)
    (:LOOPCLOSE . 1)
    (:LANDMARK . 2)
    (:REJECTED_LOOPCLOSE . 3)
    (:MESH . 4)
    (:POSE_MESH . 5)
    (:MESH_POSE . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseGraphEdge>) ostream)
  "Serializes a message object of type '<PoseGraphEdge>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_to)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'robot_from)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_to)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseGraphEdge>) istream)
  "Deserializes a message object of type '<PoseGraphEdge>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_from) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_to) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 36)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseGraphEdge>)))
  "Returns string type for a message object of type '<PoseGraphEdge>"
  "pose_graph_tools/PoseGraphEdge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGraphEdge)))
  "Returns string type for a message object of type 'PoseGraphEdge"
  "pose_graph_tools/PoseGraphEdge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseGraphEdge>)))
  "Returns md5sum for a message object of type '<PoseGraphEdge>"
  "c891cedd80b91b7f1fa4a46b7d77a19f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseGraphEdge)))
  "Returns md5sum for a message object of type 'PoseGraphEdge"
  "c891cedd80b91b7f1fa4a46b7d77a19f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseGraphEdge>)))
  "Returns full string definition for message of type '<PoseGraphEdge>"
  (cl:format cl:nil "Header header~%~%uint64 key_from~%uint64 key_to~%~%int32 robot_from~%int32 robot_to~%~%int32 type~%~%# Type enums~%int32 ODOM      = 0~%int32 LOOPCLOSE = 1~%int32 LANDMARK  = 2~%int32 REJECTED_LOOPCLOSE = 3~%int32 MESH = 4~%int32 POSE_MESH = 5~%int32 MESH_POSE = 6~%~%# Transforms in ede~%geometry_msgs/Pose pose~%float64[36] covariance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseGraphEdge)))
  "Returns full string definition for message of type 'PoseGraphEdge"
  (cl:format cl:nil "Header header~%~%uint64 key_from~%uint64 key_to~%~%int32 robot_from~%int32 robot_to~%~%int32 type~%~%# Type enums~%int32 ODOM      = 0~%int32 LOOPCLOSE = 1~%int32 LANDMARK  = 2~%int32 REJECTED_LOOPCLOSE = 3~%int32 MESH = 4~%int32 POSE_MESH = 5~%int32 MESH_POSE = 6~%~%# Transforms in ede~%geometry_msgs/Pose pose~%float64[36] covariance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseGraphEdge>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseGraphEdge>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseGraphEdge
    (cl:cons ':header (header msg))
    (cl:cons ':key_from (key_from msg))
    (cl:cons ':key_to (key_to msg))
    (cl:cons ':robot_from (robot_from msg))
    (cl:cons ':robot_to (robot_to msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':covariance (covariance msg))
))
