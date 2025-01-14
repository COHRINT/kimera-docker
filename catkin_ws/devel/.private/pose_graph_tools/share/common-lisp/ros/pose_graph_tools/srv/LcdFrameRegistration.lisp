; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-srv)


;//! \htmlinclude LcdFrameRegistration-request.msg.html

(cl:defclass <LcdFrameRegistration-request> (roslisp-msg-protocol:ros-message)
  ((query_robot
    :reader query_robot
    :initarg :query_robot
    :type cl:integer
    :initform 0)
   (match_robot
    :reader match_robot
    :initarg :match_robot
    :type cl:integer
    :initform 0)
   (query
    :reader query
    :initarg :query
    :type cl:integer
    :initform 0)
   (match
    :reader match
    :initarg :match
    :type cl:integer
    :initform 0))
)

(cl:defclass LcdFrameRegistration-request (<LcdFrameRegistration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LcdFrameRegistration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LcdFrameRegistration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-srv:<LcdFrameRegistration-request> is deprecated: use pose_graph_tools-srv:LcdFrameRegistration-request instead.")))

(cl:ensure-generic-function 'query_robot-val :lambda-list '(m))
(cl:defmethod query_robot-val ((m <LcdFrameRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:query_robot-val is deprecated.  Use pose_graph_tools-srv:query_robot instead.")
  (query_robot m))

(cl:ensure-generic-function 'match_robot-val :lambda-list '(m))
(cl:defmethod match_robot-val ((m <LcdFrameRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:match_robot-val is deprecated.  Use pose_graph_tools-srv:match_robot instead.")
  (match_robot m))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <LcdFrameRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:query-val is deprecated.  Use pose_graph_tools-srv:query instead.")
  (query m))

(cl:ensure-generic-function 'match-val :lambda-list '(m))
(cl:defmethod match-val ((m <LcdFrameRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:match-val is deprecated.  Use pose_graph_tools-srv:match instead.")
  (match m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LcdFrameRegistration-request>) ostream)
  "Serializes a message object of type '<LcdFrameRegistration-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'query_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'match_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'query)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'match)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'match)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'match)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'match)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'match)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'match)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'match)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'match)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LcdFrameRegistration-request>) istream)
  "Deserializes a message object of type '<LcdFrameRegistration-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'query_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'match_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'query)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'match)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'match)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'match)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'match)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'match)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'match)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'match)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'match)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LcdFrameRegistration-request>)))
  "Returns string type for a service object of type '<LcdFrameRegistration-request>"
  "pose_graph_tools/LcdFrameRegistrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LcdFrameRegistration-request)))
  "Returns string type for a service object of type 'LcdFrameRegistration-request"
  "pose_graph_tools/LcdFrameRegistrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LcdFrameRegistration-request>)))
  "Returns md5sum for a message object of type '<LcdFrameRegistration-request>"
  "35f0b877789b9625f9ce0e88684ba2e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LcdFrameRegistration-request)))
  "Returns md5sum for a message object of type 'LcdFrameRegistration-request"
  "35f0b877789b9625f9ce0e88684ba2e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LcdFrameRegistration-request>)))
  "Returns full string definition for message of type '<LcdFrameRegistration-request>"
  (cl:format cl:nil "uint64 query_robot~%uint64 match_robot~%uint64 query~%uint64 match~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LcdFrameRegistration-request)))
  "Returns full string definition for message of type 'LcdFrameRegistration-request"
  (cl:format cl:nil "uint64 query_robot~%uint64 match_robot~%uint64 query~%uint64 match~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LcdFrameRegistration-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LcdFrameRegistration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LcdFrameRegistration-request
    (cl:cons ':query_robot (query_robot msg))
    (cl:cons ':match_robot (match_robot msg))
    (cl:cons ':query (query msg))
    (cl:cons ':match (match msg))
))
;//! \htmlinclude LcdFrameRegistration-response.msg.html

(cl:defclass <LcdFrameRegistration-response> (roslisp-msg-protocol:ros-message)
  ((valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (match_T_query
    :reader match_T_query
    :initarg :match_T_query
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass LcdFrameRegistration-response (<LcdFrameRegistration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LcdFrameRegistration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LcdFrameRegistration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-srv:<LcdFrameRegistration-response> is deprecated: use pose_graph_tools-srv:LcdFrameRegistration-response instead.")))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <LcdFrameRegistration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:valid-val is deprecated.  Use pose_graph_tools-srv:valid instead.")
  (valid m))

(cl:ensure-generic-function 'match_T_query-val :lambda-list '(m))
(cl:defmethod match_T_query-val ((m <LcdFrameRegistration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-srv:match_T_query-val is deprecated.  Use pose_graph_tools-srv:match_T_query instead.")
  (match_T_query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LcdFrameRegistration-response>) ostream)
  "Serializes a message object of type '<LcdFrameRegistration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'match_T_query) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LcdFrameRegistration-response>) istream)
  "Deserializes a message object of type '<LcdFrameRegistration-response>"
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'match_T_query) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LcdFrameRegistration-response>)))
  "Returns string type for a service object of type '<LcdFrameRegistration-response>"
  "pose_graph_tools/LcdFrameRegistrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LcdFrameRegistration-response)))
  "Returns string type for a service object of type 'LcdFrameRegistration-response"
  "pose_graph_tools/LcdFrameRegistrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LcdFrameRegistration-response>)))
  "Returns md5sum for a message object of type '<LcdFrameRegistration-response>"
  "35f0b877789b9625f9ce0e88684ba2e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LcdFrameRegistration-response)))
  "Returns md5sum for a message object of type 'LcdFrameRegistration-response"
  "35f0b877789b9625f9ce0e88684ba2e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LcdFrameRegistration-response>)))
  "Returns full string definition for message of type '<LcdFrameRegistration-response>"
  (cl:format cl:nil "bool valid~%geometry_msgs/Pose match_T_query~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LcdFrameRegistration-response)))
  "Returns full string definition for message of type 'LcdFrameRegistration-response"
  (cl:format cl:nil "bool valid~%geometry_msgs/Pose match_T_query~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LcdFrameRegistration-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'match_T_query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LcdFrameRegistration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LcdFrameRegistration-response
    (cl:cons ':valid (valid msg))
    (cl:cons ':match_T_query (match_T_query msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LcdFrameRegistration)))
  'LcdFrameRegistration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LcdFrameRegistration)))
  'LcdFrameRegistration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LcdFrameRegistration)))
  "Returns string type for a service object of type '<LcdFrameRegistration>"
  "pose_graph_tools/LcdFrameRegistration")