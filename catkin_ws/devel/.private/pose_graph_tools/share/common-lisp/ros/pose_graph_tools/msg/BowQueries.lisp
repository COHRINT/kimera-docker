; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude BowQueries.msg.html

(cl:defclass <BowQueries> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (destination_robot_id
    :reader destination_robot_id
    :initarg :destination_robot_id
    :type cl:integer
    :initform 0)
   (queries
    :reader queries
    :initarg :queries
    :type (cl:vector pose_graph_tools-msg:BowQuery)
   :initform (cl:make-array 0 :element-type 'pose_graph_tools-msg:BowQuery :initial-element (cl:make-instance 'pose_graph_tools-msg:BowQuery))))
)

(cl:defclass BowQueries (<BowQueries>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BowQueries>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BowQueries)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<BowQueries> is deprecated: use pose_graph_tools-msg:BowQueries instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BowQueries>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:header-val is deprecated.  Use pose_graph_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'destination_robot_id-val :lambda-list '(m))
(cl:defmethod destination_robot_id-val ((m <BowQueries>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:destination_robot_id-val is deprecated.  Use pose_graph_tools-msg:destination_robot_id instead.")
  (destination_robot_id m))

(cl:ensure-generic-function 'queries-val :lambda-list '(m))
(cl:defmethod queries-val ((m <BowQueries>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:queries-val is deprecated.  Use pose_graph_tools-msg:queries instead.")
  (queries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BowQueries>) ostream)
  "Serializes a message object of type '<BowQueries>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'queries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'queries))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BowQueries>) istream)
  "Deserializes a message object of type '<BowQueries>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'queries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'queries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_graph_tools-msg:BowQuery))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BowQueries>)))
  "Returns string type for a message object of type '<BowQueries>"
  "pose_graph_tools/BowQueries")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BowQueries)))
  "Returns string type for a message object of type 'BowQueries"
  "pose_graph_tools/BowQueries")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BowQueries>)))
  "Returns md5sum for a message object of type '<BowQueries>"
  "80b67ea7bb31f6bc0188a59d8ca2119d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BowQueries)))
  "Returns md5sum for a message object of type 'BowQueries"
  "80b67ea7bb31f6bc0188a59d8ca2119d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BowQueries>)))
  "Returns full string definition for message of type '<BowQueries>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 destination_robot_id~%pose_graph_tools/BowQuery[] queries~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pose_graph_tools/BowQuery~%uint32 robot_id~%uint32 pose_id~%BowVector bow_vector~%================================================================================~%MSG: pose_graph_tools/BowVector~%uint32[] word_ids~%float32[] word_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BowQueries)))
  "Returns full string definition for message of type 'BowQueries"
  (cl:format cl:nil "std_msgs/Header header~%uint32 destination_robot_id~%pose_graph_tools/BowQuery[] queries~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pose_graph_tools/BowQuery~%uint32 robot_id~%uint32 pose_id~%BowVector bow_vector~%================================================================================~%MSG: pose_graph_tools/BowVector~%uint32[] word_ids~%float32[] word_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BowQueries>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'queries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BowQueries>))
  "Converts a ROS message object to a list"
  (cl:list 'BowQueries
    (cl:cons ':header (header msg))
    (cl:cons ':destination_robot_id (destination_robot_id msg))
    (cl:cons ':queries (queries msg))
))
