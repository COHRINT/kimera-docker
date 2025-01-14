; Auto-generated. Do not edit!


(cl:in-package lio_sam-msg)


;//! \htmlinclude factors.msg.html

(cl:defclass <factors> (roslisp-msg-protocol:ros-message)
  ((keys
    :reader keys
    :initarg :keys
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (informationMatrix
    :reader informationMatrix
    :initarg :informationMatrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (informationMatrixDim
    :reader informationMatrixDim
    :initarg :informationMatrixDim
    :type cl:fixnum
    :initform 0)
   (covarianceMatrix
    :reader covarianceMatrix
    :initarg :covarianceMatrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (covarianceMatrixDim
    :reader covarianceMatrixDim
    :initarg :covarianceMatrixDim
    :type cl:fixnum
    :initform 0)
   (mean
    :reader mean
    :initarg :mean
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (numMeans
    :reader numMeans
    :initarg :numMeans
    :type cl:fixnum
    :initform 0))
)

(cl:defclass factors (<factors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <factors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'factors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lio_sam-msg:<factors> is deprecated: use lio_sam-msg:factors instead.")))

(cl:ensure-generic-function 'keys-val :lambda-list '(m))
(cl:defmethod keys-val ((m <factors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:keys-val is deprecated.  Use lio_sam-msg:keys instead.")
  (keys m))

(cl:ensure-generic-function 'informationMatrix-val :lambda-list '(m))
(cl:defmethod informationMatrix-val ((m <factors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:informationMatrix-val is deprecated.  Use lio_sam-msg:informationMatrix instead.")
  (informationMatrix m))

(cl:ensure-generic-function 'informationMatrixDim-val :lambda-list '(m))
(cl:defmethod informationMatrixDim-val ((m <factors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:informationMatrixDim-val is deprecated.  Use lio_sam-msg:informationMatrixDim instead.")
  (informationMatrixDim m))

(cl:ensure-generic-function 'covarianceMatrix-val :lambda-list '(m))
(cl:defmethod covarianceMatrix-val ((m <factors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:covarianceMatrix-val is deprecated.  Use lio_sam-msg:covarianceMatrix instead.")
  (covarianceMatrix m))

(cl:ensure-generic-function 'covarianceMatrixDim-val :lambda-list '(m))
(cl:defmethod covarianceMatrixDim-val ((m <factors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:covarianceMatrixDim-val is deprecated.  Use lio_sam-msg:covarianceMatrixDim instead.")
  (covarianceMatrixDim m))

(cl:ensure-generic-function 'mean-val :lambda-list '(m))
(cl:defmethod mean-val ((m <factors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:mean-val is deprecated.  Use lio_sam-msg:mean instead.")
  (mean m))

(cl:ensure-generic-function 'numMeans-val :lambda-list '(m))
(cl:defmethod numMeans-val ((m <factors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:numMeans-val is deprecated.  Use lio_sam-msg:numMeans instead.")
  (numMeans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <factors>) ostream)
  "Serializes a message object of type '<factors>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keys))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'keys))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'informationMatrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'informationMatrix))
  (cl:let* ((signed (cl:slot-value msg 'informationMatrixDim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'covarianceMatrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'covarianceMatrix))
  (cl:let* ((signed (cl:slot-value msg 'covarianceMatrixDim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'mean))
  (cl:let* ((signed (cl:slot-value msg 'numMeans)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <factors>) istream)
  "Deserializes a message object of type '<factors>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keys) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keys)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'informationMatrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'informationMatrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'informationMatrixDim) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'covarianceMatrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'covarianceMatrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'covarianceMatrixDim) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mean) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mean)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numMeans) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<factors>)))
  "Returns string type for a message object of type '<factors>"
  "lio_sam/factors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'factors)))
  "Returns string type for a message object of type 'factors"
  "lio_sam/factors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<factors>)))
  "Returns md5sum for a message object of type '<factors>"
  "132517768e54222e9cb7f7948cccc70e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'factors)))
  "Returns md5sum for a message object of type 'factors"
  "132517768e54222e9cb7f7948cccc70e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<factors>)))
  "Returns full string definition for message of type '<factors>"
  (cl:format cl:nil "int16[] keys~%float32[] informationMatrix~%int16 informationMatrixDim~%float32[] covarianceMatrix~%int16 covarianceMatrixDim~%float32[] mean~%int16 numMeans~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'factors)))
  "Returns full string definition for message of type 'factors"
  (cl:format cl:nil "int16[] keys~%float32[] informationMatrix~%int16 informationMatrixDim~%float32[] covarianceMatrix~%int16 covarianceMatrixDim~%float32[] mean~%int16 numMeans~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <factors>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keys) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'informationMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'covarianceMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mean) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <factors>))
  "Converts a ROS message object to a list"
  (cl:list 'factors
    (cl:cons ':keys (keys msg))
    (cl:cons ':informationMatrix (informationMatrix msg))
    (cl:cons ':informationMatrixDim (informationMatrixDim msg))
    (cl:cons ':covarianceMatrix (covarianceMatrix msg))
    (cl:cons ':covarianceMatrixDim (covarianceMatrixDim msg))
    (cl:cons ':mean (mean msg))
    (cl:cons ':numMeans (numMeans msg))
))
