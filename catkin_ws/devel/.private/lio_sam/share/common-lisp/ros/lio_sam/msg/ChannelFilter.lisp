; Auto-generated. Do not edit!


(cl:in-package lio_sam-msg)


;//! \htmlinclude ChannelFilter.msg.html

(cl:defclass <ChannelFilter> (roslisp-msg-protocol:ros-message)
  ((sender
    :reader sender
    :initarg :sender
    :type cl:fixnum
    :initform 0)
   (recipient
    :reader recipient
    :initarg :recipient
    :type cl:fixnum
    :initform 0)
   (dims
    :reader dims
    :initarg :dims
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (matrixDim
    :reader matrixDim
    :initarg :matrixDim
    :type cl:fixnum
    :initform 0)
   (infMat
    :reader infMat
    :initarg :infMat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (infVec
    :reader infVec
    :initarg :infVec
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ChannelFilter (<ChannelFilter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChannelFilter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChannelFilter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lio_sam-msg:<ChannelFilter> is deprecated: use lio_sam-msg:ChannelFilter instead.")))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <ChannelFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:sender-val is deprecated.  Use lio_sam-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'recipient-val :lambda-list '(m))
(cl:defmethod recipient-val ((m <ChannelFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:recipient-val is deprecated.  Use lio_sam-msg:recipient instead.")
  (recipient m))

(cl:ensure-generic-function 'dims-val :lambda-list '(m))
(cl:defmethod dims-val ((m <ChannelFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:dims-val is deprecated.  Use lio_sam-msg:dims instead.")
  (dims m))

(cl:ensure-generic-function 'matrixDim-val :lambda-list '(m))
(cl:defmethod matrixDim-val ((m <ChannelFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:matrixDim-val is deprecated.  Use lio_sam-msg:matrixDim instead.")
  (matrixDim m))

(cl:ensure-generic-function 'infMat-val :lambda-list '(m))
(cl:defmethod infMat-val ((m <ChannelFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:infMat-val is deprecated.  Use lio_sam-msg:infMat instead.")
  (infMat m))

(cl:ensure-generic-function 'infVec-val :lambda-list '(m))
(cl:defmethod infVec-val ((m <ChannelFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:infVec-val is deprecated.  Use lio_sam-msg:infVec instead.")
  (infVec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChannelFilter>) ostream)
  "Serializes a message object of type '<ChannelFilter>"
  (cl:let* ((signed (cl:slot-value msg 'sender)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'recipient)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dims))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'dims))
  (cl:let* ((signed (cl:slot-value msg 'matrixDim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'infMat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'infMat))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'infVec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'infVec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChannelFilter>) istream)
  "Deserializes a message object of type '<ChannelFilter>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recipient) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dims) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dims)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'matrixDim) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'infMat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'infMat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'infVec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'infVec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChannelFilter>)))
  "Returns string type for a message object of type '<ChannelFilter>"
  "lio_sam/ChannelFilter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChannelFilter)))
  "Returns string type for a message object of type 'ChannelFilter"
  "lio_sam/ChannelFilter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChannelFilter>)))
  "Returns md5sum for a message object of type '<ChannelFilter>"
  "87e5f6005f50505b9be672729f6ad269")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChannelFilter)))
  "Returns md5sum for a message object of type 'ChannelFilter"
  "87e5f6005f50505b9be672729f6ad269")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChannelFilter>)))
  "Returns full string definition for message of type '<ChannelFilter>"
  (cl:format cl:nil "int16 sender~%int16 recipient~%string[] dims~%int16 matrixDim~%float64[] infMat~%float64[] infVec~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChannelFilter)))
  "Returns full string definition for message of type 'ChannelFilter"
  (cl:format cl:nil "int16 sender~%int16 recipient~%string[] dims~%int16 matrixDim~%float64[] infMat~%float64[] infVec~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChannelFilter>))
  (cl:+ 0
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dims) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'infMat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'infVec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChannelFilter>))
  "Converts a ROS message object to a list"
  (cl:list 'ChannelFilter
    (cl:cons ':sender (sender msg))
    (cl:cons ':recipient (recipient msg))
    (cl:cons ':dims (dims msg))
    (cl:cons ':matrixDim (matrixDim msg))
    (cl:cons ':infMat (infMat msg))
    (cl:cons ':infVec (infVec msg))
))
