; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude VLCRequests.msg.html

(cl:defclass <VLCRequests> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (source_robot_id
    :reader source_robot_id
    :initarg :source_robot_id
    :type cl:integer
    :initform 0)
   (destination_robot_id
    :reader destination_robot_id
    :initarg :destination_robot_id
    :type cl:integer
    :initform 0)
   (pose_ids
    :reader pose_ids
    :initarg :pose_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass VLCRequests (<VLCRequests>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VLCRequests>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VLCRequests)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<VLCRequests> is deprecated: use pose_graph_tools-msg:VLCRequests instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VLCRequests>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:header-val is deprecated.  Use pose_graph_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'source_robot_id-val :lambda-list '(m))
(cl:defmethod source_robot_id-val ((m <VLCRequests>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:source_robot_id-val is deprecated.  Use pose_graph_tools-msg:source_robot_id instead.")
  (source_robot_id m))

(cl:ensure-generic-function 'destination_robot_id-val :lambda-list '(m))
(cl:defmethod destination_robot_id-val ((m <VLCRequests>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:destination_robot_id-val is deprecated.  Use pose_graph_tools-msg:destination_robot_id instead.")
  (destination_robot_id m))

(cl:ensure-generic-function 'pose_ids-val :lambda-list '(m))
(cl:defmethod pose_ids-val ((m <VLCRequests>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:pose_ids-val is deprecated.  Use pose_graph_tools-msg:pose_ids instead.")
  (pose_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VLCRequests>) ostream)
  "Serializes a message object of type '<VLCRequests>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_robot_id)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VLCRequests>) istream)
  "Deserializes a message object of type '<VLCRequests>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VLCRequests>)))
  "Returns string type for a message object of type '<VLCRequests>"
  "pose_graph_tools/VLCRequests")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VLCRequests)))
  "Returns string type for a message object of type 'VLCRequests"
  "pose_graph_tools/VLCRequests")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VLCRequests>)))
  "Returns md5sum for a message object of type '<VLCRequests>"
  "772d3c253526173250ad7a3a53433c14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VLCRequests)))
  "Returns md5sum for a message object of type 'VLCRequests"
  "772d3c253526173250ad7a3a53433c14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VLCRequests>)))
  "Returns full string definition for message of type '<VLCRequests>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 source_robot_id        # Robot that sends this request~%uint32 destination_robot_id   # Robot that receives this request~%uint32[] pose_ids             # Pose IDs of requested VLC frames of the destination robot ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VLCRequests)))
  "Returns full string definition for message of type 'VLCRequests"
  (cl:format cl:nil "std_msgs/Header header~%uint32 source_robot_id        # Robot that sends this request~%uint32 destination_robot_id   # Robot that receives this request~%uint32[] pose_ids             # Pose IDs of requested VLC frames of the destination robot ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VLCRequests>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VLCRequests>))
  "Converts a ROS message object to a list"
  (cl:list 'VLCRequests
    (cl:cons ':header (header msg))
    (cl:cons ':source_robot_id (source_robot_id msg))
    (cl:cons ':destination_robot_id (destination_robot_id msg))
    (cl:cons ':pose_ids (pose_ids msg))
))
