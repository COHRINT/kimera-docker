;; Auto-generated. Do not edit!


(when (boundp 'lio_sam::SLAMRequest)
  (if (not (find-package "LIO_SAM"))
    (make-package "LIO_SAM"))
  (shadow 'SLAMRequest (find-package "LIO_SAM")))
(unless (find-package "LIO_SAM::SLAMREQUEST")
  (make-package "LIO_SAM::SLAMREQUEST"))

(in-package "ROS")
;;//! \htmlinclude SLAMRequest.msg.html


(defclass lio_sam::SLAMRequest
  :super ros::object
  :slots (_timeSteps ))

(defmethod lio_sam::SLAMRequest
  (:init
   (&key
    ((:timeSteps __timeSteps) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _timeSteps __timeSteps)
   self)
  (:timeSteps
   (&optional __timeSteps)
   (if __timeSteps (setq _timeSteps __timeSteps)) _timeSteps)
  (:serialization-length
   ()
   (+
    ;; int16[] _timeSteps
    (* 2    (length _timeSteps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _timeSteps
     (write-long (length _timeSteps) s)
     (dotimes (i (length _timeSteps))
       (write-word (elt _timeSteps i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _timeSteps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timeSteps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _timeSteps i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get lio_sam::SLAMRequest :md5sum-) "22beaa9729a4d342620b03d0ce0a3db3")
(setf (get lio_sam::SLAMRequest :datatype-) "lio_sam/SLAMRequest")
(setf (get lio_sam::SLAMRequest :definition-)
      "int16[] timeSteps
")



(provide :lio_sam/SLAMRequest "22beaa9729a4d342620b03d0ce0a3db3")


