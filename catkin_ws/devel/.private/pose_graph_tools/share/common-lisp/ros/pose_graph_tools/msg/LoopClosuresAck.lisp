; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude LoopClosuresAck.msg.html

(cl:defclass <LoopClosuresAck> (roslisp-msg-protocol:ros-message)
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
   (robot_src
    :reader robot_src
    :initarg :robot_src
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (frame_src
    :reader frame_src
    :initarg :frame_src
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (robot_dst
    :reader robot_dst
    :initarg :robot_dst
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (frame_dst
    :reader frame_dst
    :initarg :frame_dst
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LoopClosuresAck (<LoopClosuresAck>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopClosuresAck>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopClosuresAck)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<LoopClosuresAck> is deprecated: use pose_graph_tools-msg:LoopClosuresAck instead.")))

(cl:ensure-generic-function 'publishing_robot_id-val :lambda-list '(m))
(cl:defmethod publishing_robot_id-val ((m <LoopClosuresAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:publishing_robot_id-val is deprecated.  Use pose_graph_tools-msg:publishing_robot_id instead.")
  (publishing_robot_id m))

(cl:ensure-generic-function 'destination_robot_id-val :lambda-list '(m))
(cl:defmethod destination_robot_id-val ((m <LoopClosuresAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:destination_robot_id-val is deprecated.  Use pose_graph_tools-msg:destination_robot_id instead.")
  (destination_robot_id m))

(cl:ensure-generic-function 'robot_src-val :lambda-list '(m))
(cl:defmethod robot_src-val ((m <LoopClosuresAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:robot_src-val is deprecated.  Use pose_graph_tools-msg:robot_src instead.")
  (robot_src m))

(cl:ensure-generic-function 'frame_src-val :lambda-list '(m))
(cl:defmethod frame_src-val ((m <LoopClosuresAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:frame_src-val is deprecated.  Use pose_graph_tools-msg:frame_src instead.")
  (frame_src m))

(cl:ensure-generic-function 'robot_dst-val :lambda-list '(m))
(cl:defmethod robot_dst-val ((m <LoopClosuresAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:robot_dst-val is deprecated.  Use pose_graph_tools-msg:robot_dst instead.")
  (robot_dst m))

(cl:ensure-generic-function 'frame_dst-val :lambda-list '(m))
(cl:defmethod frame_dst-val ((m <LoopClosuresAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:frame_dst-val is deprecated.  Use pose_graph_tools-msg:frame_dst instead.")
  (frame_dst m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopClosuresAck>) ostream)
  "Serializes a message object of type '<LoopClosuresAck>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'publishing_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'publishing_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_src))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'robot_src))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frame_src))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'frame_src))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_dst))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'robot_dst))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frame_dst))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'frame_dst))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopClosuresAck>) istream)
  "Deserializes a message object of type '<LoopClosuresAck>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'publishing_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'publishing_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_robot_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_src) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_src)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frame_src) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frame_src)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_dst) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_dst)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frame_dst) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frame_dst)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopClosuresAck>)))
  "Returns string type for a message object of type '<LoopClosuresAck>"
  "pose_graph_tools/LoopClosuresAck")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosuresAck)))
  "Returns string type for a message object of type 'LoopClosuresAck"
  "pose_graph_tools/LoopClosuresAck")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopClosuresAck>)))
  "Returns md5sum for a message object of type '<LoopClosuresAck>"
  "a9c7cfa8a3ce5c724d171d7076a7f930")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopClosuresAck)))
  "Returns md5sum for a message object of type 'LoopClosuresAck"
  "a9c7cfa8a3ce5c724d171d7076a7f930")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopClosuresAck>)))
  "Returns full string definition for message of type '<LoopClosuresAck>"
  (cl:format cl:nil "uint16 publishing_robot_id~%uint16 destination_robot_id~%uint32[] robot_src~%uint32[] frame_src~%uint32[] robot_dst~%uint32[] frame_dst~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopClosuresAck)))
  "Returns full string definition for message of type 'LoopClosuresAck"
  (cl:format cl:nil "uint16 publishing_robot_id~%uint16 destination_robot_id~%uint32[] robot_src~%uint32[] frame_src~%uint32[] robot_dst~%uint32[] frame_dst~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopClosuresAck>))
  (cl:+ 0
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_src) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frame_src) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_dst) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frame_dst) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopClosuresAck>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopClosuresAck
    (cl:cons ':publishing_robot_id (publishing_robot_id msg))
    (cl:cons ':destination_robot_id (destination_robot_id msg))
    (cl:cons ':robot_src (robot_src msg))
    (cl:cons ':frame_src (frame_src msg))
    (cl:cons ':robot_dst (robot_dst msg))
    (cl:cons ':frame_dst (frame_dst msg))
))
