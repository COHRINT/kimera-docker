; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude BowVector.msg.html

(cl:defclass <BowVector> (roslisp-msg-protocol:ros-message)
  ((word_ids
    :reader word_ids
    :initarg :word_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (word_values
    :reader word_values
    :initarg :word_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass BowVector (<BowVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BowVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BowVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<BowVector> is deprecated: use pose_graph_tools-msg:BowVector instead.")))

(cl:ensure-generic-function 'word_ids-val :lambda-list '(m))
(cl:defmethod word_ids-val ((m <BowVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:word_ids-val is deprecated.  Use pose_graph_tools-msg:word_ids instead.")
  (word_ids m))

(cl:ensure-generic-function 'word_values-val :lambda-list '(m))
(cl:defmethod word_values-val ((m <BowVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:word_values-val is deprecated.  Use pose_graph_tools-msg:word_values instead.")
  (word_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BowVector>) ostream)
  "Serializes a message object of type '<BowVector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'word_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'word_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'word_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'word_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BowVector>) istream)
  "Deserializes a message object of type '<BowVector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'word_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'word_ids)))
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
  (cl:setf (cl:slot-value msg 'word_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'word_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BowVector>)))
  "Returns string type for a message object of type '<BowVector>"
  "pose_graph_tools/BowVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BowVector)))
  "Returns string type for a message object of type 'BowVector"
  "pose_graph_tools/BowVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BowVector>)))
  "Returns md5sum for a message object of type '<BowVector>"
  "1902706b4fdbaef5678c8f0eeda681c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BowVector)))
  "Returns md5sum for a message object of type 'BowVector"
  "1902706b4fdbaef5678c8f0eeda681c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BowVector>)))
  "Returns full string definition for message of type '<BowVector>"
  (cl:format cl:nil "uint32[] word_ids~%float32[] word_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BowVector)))
  "Returns full string definition for message of type 'BowVector"
  (cl:format cl:nil "uint32[] word_ids~%float32[] word_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BowVector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'word_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'word_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BowVector>))
  "Converts a ROS message object to a list"
  (cl:list 'BowVector
    (cl:cons ':word_ids (word_ids msg))
    (cl:cons ':word_values (word_values msg))
))
