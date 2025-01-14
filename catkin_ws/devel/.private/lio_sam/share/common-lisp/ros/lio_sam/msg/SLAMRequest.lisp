; Auto-generated. Do not edit!


(cl:in-package lio_sam-msg)


;//! \htmlinclude SLAMRequest.msg.html

(cl:defclass <SLAMRequest> (roslisp-msg-protocol:ros-message)
  ((timeSteps
    :reader timeSteps
    :initarg :timeSteps
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SLAMRequest (<SLAMRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SLAMRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SLAMRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lio_sam-msg:<SLAMRequest> is deprecated: use lio_sam-msg:SLAMRequest instead.")))

(cl:ensure-generic-function 'timeSteps-val :lambda-list '(m))
(cl:defmethod timeSteps-val ((m <SLAMRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam-msg:timeSteps-val is deprecated.  Use lio_sam-msg:timeSteps instead.")
  (timeSteps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SLAMRequest>) ostream)
  "Serializes a message object of type '<SLAMRequest>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timeSteps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'timeSteps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SLAMRequest>) istream)
  "Deserializes a message object of type '<SLAMRequest>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'timeSteps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timeSteps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SLAMRequest>)))
  "Returns string type for a message object of type '<SLAMRequest>"
  "lio_sam/SLAMRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SLAMRequest)))
  "Returns string type for a message object of type 'SLAMRequest"
  "lio_sam/SLAMRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SLAMRequest>)))
  "Returns md5sum for a message object of type '<SLAMRequest>"
  "22beaa9729a4d342620b03d0ce0a3db3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SLAMRequest)))
  "Returns md5sum for a message object of type 'SLAMRequest"
  "22beaa9729a4d342620b03d0ce0a3db3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SLAMRequest>)))
  "Returns full string definition for message of type '<SLAMRequest>"
  (cl:format cl:nil "int16[] timeSteps~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SLAMRequest)))
  "Returns full string definition for message of type 'SLAMRequest"
  (cl:format cl:nil "int16[] timeSteps~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SLAMRequest>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timeSteps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SLAMRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'SLAMRequest
    (cl:cons ':timeSteps (timeSteps msg))
))
