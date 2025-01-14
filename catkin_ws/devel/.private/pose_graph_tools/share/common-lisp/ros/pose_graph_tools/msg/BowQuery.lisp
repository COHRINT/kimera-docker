; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude BowQuery.msg.html

(cl:defclass <BowQuery> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (pose_id
    :reader pose_id
    :initarg :pose_id
    :type cl:integer
    :initform 0)
   (bow_vector
    :reader bow_vector
    :initarg :bow_vector
    :type pose_graph_tools-msg:BowVector
    :initform (cl:make-instance 'pose_graph_tools-msg:BowVector)))
)

(cl:defclass BowQuery (<BowQuery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BowQuery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BowQuery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<BowQuery> is deprecated: use pose_graph_tools-msg:BowQuery instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <BowQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:robot_id-val is deprecated.  Use pose_graph_tools-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'pose_id-val :lambda-list '(m))
(cl:defmethod pose_id-val ((m <BowQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:pose_id-val is deprecated.  Use pose_graph_tools-msg:pose_id instead.")
  (pose_id m))

(cl:ensure-generic-function 'bow_vector-val :lambda-list '(m))
(cl:defmethod bow_vector-val ((m <BowQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:bow_vector-val is deprecated.  Use pose_graph_tools-msg:bow_vector instead.")
  (bow_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BowQuery>) ostream)
  "Serializes a message object of type '<BowQuery>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pose_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pose_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pose_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pose_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bow_vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BowQuery>) istream)
  "Deserializes a message object of type '<BowQuery>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pose_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pose_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pose_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pose_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bow_vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BowQuery>)))
  "Returns string type for a message object of type '<BowQuery>"
  "pose_graph_tools/BowQuery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BowQuery)))
  "Returns string type for a message object of type 'BowQuery"
  "pose_graph_tools/BowQuery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BowQuery>)))
  "Returns md5sum for a message object of type '<BowQuery>"
  "a0cd5fc0bc344c45715e8fad77418231")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BowQuery)))
  "Returns md5sum for a message object of type 'BowQuery"
  "a0cd5fc0bc344c45715e8fad77418231")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BowQuery>)))
  "Returns full string definition for message of type '<BowQuery>"
  (cl:format cl:nil "uint32 robot_id~%uint32 pose_id~%BowVector bow_vector~%================================================================================~%MSG: pose_graph_tools/BowVector~%uint32[] word_ids~%float32[] word_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BowQuery)))
  "Returns full string definition for message of type 'BowQuery"
  (cl:format cl:nil "uint32 robot_id~%uint32 pose_id~%BowVector bow_vector~%================================================================================~%MSG: pose_graph_tools/BowVector~%uint32[] word_ids~%float32[] word_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BowQuery>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bow_vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BowQuery>))
  "Converts a ROS message object to a list"
  (cl:list 'BowQuery
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':pose_id (pose_id msg))
    (cl:cons ':bow_vector (bow_vector msg))
))
