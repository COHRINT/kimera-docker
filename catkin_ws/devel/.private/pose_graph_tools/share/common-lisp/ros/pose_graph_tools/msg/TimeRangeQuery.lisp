; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude TimeRangeQuery.msg.html

(cl:defclass <TimeRangeQuery> (roslisp-msg-protocol:ros-message)
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
   (start
    :reader start
    :initarg :start
    :type cl:real
    :initform 0)
   (end
    :reader end
    :initarg :end
    :type cl:real
    :initform 0))
)

(cl:defclass TimeRangeQuery (<TimeRangeQuery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeRangeQuery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeRangeQuery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<TimeRangeQuery> is deprecated: use pose_graph_tools-msg:TimeRangeQuery instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TimeRangeQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:header-val is deprecated.  Use pose_graph_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'source_robot_id-val :lambda-list '(m))
(cl:defmethod source_robot_id-val ((m <TimeRangeQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:source_robot_id-val is deprecated.  Use pose_graph_tools-msg:source_robot_id instead.")
  (source_robot_id m))

(cl:ensure-generic-function 'destination_robot_id-val :lambda-list '(m))
(cl:defmethod destination_robot_id-val ((m <TimeRangeQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:destination_robot_id-val is deprecated.  Use pose_graph_tools-msg:destination_robot_id instead.")
  (destination_robot_id m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <TimeRangeQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:start-val is deprecated.  Use pose_graph_tools-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <TimeRangeQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:end-val is deprecated.  Use pose_graph_tools-msg:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeRangeQuery>) ostream)
  "Serializes a message object of type '<TimeRangeQuery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'start) (cl:floor (cl:slot-value msg 'start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end) (cl:floor (cl:slot-value msg 'end)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeRangeQuery>) istream)
  "Deserializes a message object of type '<TimeRangeQuery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeRangeQuery>)))
  "Returns string type for a message object of type '<TimeRangeQuery>"
  "pose_graph_tools/TimeRangeQuery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeRangeQuery)))
  "Returns string type for a message object of type 'TimeRangeQuery"
  "pose_graph_tools/TimeRangeQuery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeRangeQuery>)))
  "Returns md5sum for a message object of type '<TimeRangeQuery>"
  "8850a010b4d3f62be955d67ff24be89e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeRangeQuery)))
  "Returns md5sum for a message object of type 'TimeRangeQuery"
  "8850a010b4d3f62be955d67ff24be89e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeRangeQuery>)))
  "Returns full string definition for message of type '<TimeRangeQuery>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 source_robot_id        # Robot that sends this request~%uint32 destination_robot_id   # Robot that receives this request~%time start                    # Start of time range~%time end                      # End of time range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeRangeQuery)))
  "Returns full string definition for message of type 'TimeRangeQuery"
  (cl:format cl:nil "std_msgs/Header header~%uint32 source_robot_id        # Robot that sends this request~%uint32 destination_robot_id   # Robot that receives this request~%time start                    # Start of time range~%time end                      # End of time range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeRangeQuery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeRangeQuery>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeRangeQuery
    (cl:cons ':header (header msg))
    (cl:cons ':source_robot_id (source_robot_id msg))
    (cl:cons ':destination_robot_id (destination_robot_id msg))
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
))
