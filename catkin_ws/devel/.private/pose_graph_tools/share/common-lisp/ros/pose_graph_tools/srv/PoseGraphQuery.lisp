; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-srv)


;//! \htmlinclude PoseGraphQuery-request.msg.html

(cl:defclass <PoseGraphQuery-request> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PoseGraphQuery-request (<PoseGraphQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseGraphQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseGraphQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-srv:<PoseGraphQuery-request> is deprecated: use pose_graph_tools-srv:PoseGraphQuery-request instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <PoseGraphQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:robot_id-val is deprecated.  Use pose_graph_tools-srv:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseGraphQuery-request>) ostream)
  "Serializes a message object of type '<PoseGraphQuery-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseGraphQuery-request>) istream)
  "Deserializes a message object of type '<PoseGraphQuery-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseGraphQuery-request>)))
  "Returns string type for a service object of type '<PoseGraphQuery-request>"
  "pose_graph_tools/PoseGraphQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGraphQuery-request)))
  "Returns string type for a service object of type 'PoseGraphQuery-request"
  "pose_graph_tools/PoseGraphQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseGraphQuery-request>)))
  "Returns md5sum for a message object of type '<PoseGraphQuery-request>"
  "40dc150d34e522c5c9dc2d4c5d84a9d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseGraphQuery-request)))
  "Returns md5sum for a message object of type 'PoseGraphQuery-request"
  "40dc150d34e522c5c9dc2d4c5d84a9d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseGraphQuery-request>)))
  "Returns full string definition for message of type '<PoseGraphQuery-request>"
  (cl:format cl:nil "uint16 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseGraphQuery-request)))
  "Returns full string definition for message of type 'PoseGraphQuery-request"
  (cl:format cl:nil "uint16 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseGraphQuery-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseGraphQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseGraphQuery-request
    (cl:cons ':robot_id (robot_id msg))
))
;//! \htmlinclude PoseGraphQuery-response.msg.html

(cl:defclass <PoseGraphQuery-response> (roslisp-msg-protocol:ros-message)
  ((pose_graph
    :reader pose_graph
    :initarg :pose_graph
    :type pose_graph_tools-msg:PoseGraph
    :initform (cl:make-instance 'pose_graph_tools-msg:PoseGraph)))
)

(cl:defclass PoseGraphQuery-response (<PoseGraphQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseGraphQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseGraphQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-srv:<PoseGraphQuery-response> is deprecated: use pose_graph_tools-srv:PoseGraphQuery-response instead.")))

(cl:ensure-generic-function 'pose_graph-val :lambda-list '(m))
(cl:defmethod pose_graph-val ((m <PoseGraphQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:pose_graph-val is deprecated.  Use pose_graph_tools-srv:pose_graph instead.")
  (pose_graph m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseGraphQuery-response>) ostream)
  "Serializes a message object of type '<PoseGraphQuery-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_graph) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseGraphQuery-response>) istream)
  "Deserializes a message object of type '<PoseGraphQuery-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_graph) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseGraphQuery-response>)))
  "Returns string type for a service object of type '<PoseGraphQuery-response>"
  "pose_graph_tools/PoseGraphQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGraphQuery-response)))
  "Returns string type for a service object of type 'PoseGraphQuery-response"
  "pose_graph_tools/PoseGraphQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseGraphQuery-response>)))
  "Returns md5sum for a message object of type '<PoseGraphQuery-response>"
  "40dc150d34e522c5c9dc2d4c5d84a9d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseGraphQuery-response)))
  "Returns md5sum for a message object of type 'PoseGraphQuery-response"
  "40dc150d34e522c5c9dc2d4c5d84a9d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseGraphQuery-response>)))
  "Returns full string definition for message of type '<PoseGraphQuery-response>"
  (cl:format cl:nil "pose_graph_tools/PoseGraph pose_graph~%~%================================================================================~%MSG: pose_graph_tools/PoseGraph~%Header header~%~%# Nodes and edges~%PoseGraphNode[] nodes~%PoseGraphEdge[] edges~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pose_graph_tools/PoseGraphNode~%Header header~%~%int32 robot_id~%~%uint64 key~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pose_graph_tools/PoseGraphEdge~%Header header~%~%uint64 key_from~%uint64 key_to~%~%int32 robot_from~%int32 robot_to~%~%int32 type~%~%# Type enums~%int32 ODOM      = 0~%int32 LOOPCLOSE = 1~%int32 LANDMARK  = 2~%int32 REJECTED_LOOPCLOSE = 3~%int32 MESH = 4~%int32 POSE_MESH = 5~%int32 MESH_POSE = 6~%~%# Transforms in ede~%geometry_msgs/Pose pose~%float64[36] covariance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseGraphQuery-response)))
  "Returns full string definition for message of type 'PoseGraphQuery-response"
  (cl:format cl:nil "pose_graph_tools/PoseGraph pose_graph~%~%================================================================================~%MSG: pose_graph_tools/PoseGraph~%Header header~%~%# Nodes and edges~%PoseGraphNode[] nodes~%PoseGraphEdge[] edges~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pose_graph_tools/PoseGraphNode~%Header header~%~%int32 robot_id~%~%uint64 key~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pose_graph_tools/PoseGraphEdge~%Header header~%~%uint64 key_from~%uint64 key_to~%~%int32 robot_from~%int32 robot_to~%~%int32 type~%~%# Type enums~%int32 ODOM      = 0~%int32 LOOPCLOSE = 1~%int32 LANDMARK  = 2~%int32 REJECTED_LOOPCLOSE = 3~%int32 MESH = 4~%int32 POSE_MESH = 5~%int32 MESH_POSE = 6~%~%# Transforms in ede~%geometry_msgs/Pose pose~%float64[36] covariance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseGraphQuery-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_graph))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseGraphQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseGraphQuery-response
    (cl:cons ':pose_graph (pose_graph msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PoseGraphQuery)))
  'PoseGraphQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PoseGraphQuery)))
  'PoseGraphQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGraphQuery)))
  "Returns string type for a service object of type '<PoseGraphQuery>"
  "pose_graph_tools/PoseGraphQuery")