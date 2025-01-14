;; Auto-generated. Do not edit!


(when (boundp 'lio_sam::ChannelFilter)
  (if (not (find-package "LIO_SAM"))
    (make-package "LIO_SAM"))
  (shadow 'ChannelFilter (find-package "LIO_SAM")))
(unless (find-package "LIO_SAM::CHANNELFILTER")
  (make-package "LIO_SAM::CHANNELFILTER"))

(in-package "ROS")
;;//! \htmlinclude ChannelFilter.msg.html


(defclass lio_sam::ChannelFilter
  :super ros::object
  :slots (_sender _recipient _dims _matrixDim _infMat _infVec ))

(defmethod lio_sam::ChannelFilter
  (:init
   (&key
    ((:sender __sender) 0)
    ((:recipient __recipient) 0)
    ((:dims __dims) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:matrixDim __matrixDim) 0)
    ((:infMat __infMat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:infVec __infVec) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _sender (round __sender))
   (setq _recipient (round __recipient))
   (setq _dims __dims)
   (setq _matrixDim (round __matrixDim))
   (setq _infMat __infMat)
   (setq _infVec __infVec)
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:recipient
   (&optional __recipient)
   (if __recipient (setq _recipient __recipient)) _recipient)
  (:dims
   (&optional __dims)
   (if __dims (setq _dims __dims)) _dims)
  (:matrixDim
   (&optional __matrixDim)
   (if __matrixDim (setq _matrixDim __matrixDim)) _matrixDim)
  (:infMat
   (&optional __infMat)
   (if __infMat (setq _infMat __infMat)) _infMat)
  (:infVec
   (&optional __infVec)
   (if __infVec (setq _infVec __infVec)) _infVec)
  (:serialization-length
   ()
   (+
    ;; int16 _sender
    2
    ;; int16 _recipient
    2
    ;; string[] _dims
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _dims)) 4
    ;; int16 _matrixDim
    2
    ;; float64[] _infMat
    (* 8    (length _infMat)) 4
    ;; float64[] _infVec
    (* 8    (length _infVec)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _sender
       (write-word _sender s)
     ;; int16 _recipient
       (write-word _recipient s)
     ;; string[] _dims
     (write-long (length _dims) s)
     (dolist (elem _dims)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int16 _matrixDim
       (write-word _matrixDim s)
     ;; float64[] _infMat
     (write-long (length _infMat) s)
     (dotimes (i (length _infMat))
       (sys::poke (elt _infMat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _infVec
     (write-long (length _infVec) s)
     (dotimes (i (length _infVec))
       (sys::poke (elt _infVec i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _sender
     (setq _sender (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _recipient
     (setq _recipient (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string[] _dims
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dims (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _dims i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int16 _matrixDim
     (setq _matrixDim (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[] _infMat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _infMat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _infMat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _infVec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _infVec (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _infVec i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get lio_sam::ChannelFilter :md5sum-) "87e5f6005f50505b9be672729f6ad269")
(setf (get lio_sam::ChannelFilter :datatype-) "lio_sam/ChannelFilter")
(setf (get lio_sam::ChannelFilter :definition-)
      "int16 sender
int16 recipient
string[] dims
int16 matrixDim
float64[] infMat
float64[] infVec
")



(provide :lio_sam/ChannelFilter "87e5f6005f50505b9be672729f6ad269")


