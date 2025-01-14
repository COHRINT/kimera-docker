;; Auto-generated. Do not edit!


(when (boundp 'lio_sam::factors)
  (if (not (find-package "LIO_SAM"))
    (make-package "LIO_SAM"))
  (shadow 'factors (find-package "LIO_SAM")))
(unless (find-package "LIO_SAM::FACTORS")
  (make-package "LIO_SAM::FACTORS"))

(in-package "ROS")
;;//! \htmlinclude factors.msg.html


(defclass lio_sam::factors
  :super ros::object
  :slots (_keys _informationMatrix _informationMatrixDim _covarianceMatrix _covarianceMatrixDim _mean _numMeans ))

(defmethod lio_sam::factors
  (:init
   (&key
    ((:keys __keys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:informationMatrix __informationMatrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:informationMatrixDim __informationMatrixDim) 0)
    ((:covarianceMatrix __covarianceMatrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:covarianceMatrixDim __covarianceMatrixDim) 0)
    ((:mean __mean) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:numMeans __numMeans) 0)
    )
   (send-super :init)
   (setq _keys __keys)
   (setq _informationMatrix __informationMatrix)
   (setq _informationMatrixDim (round __informationMatrixDim))
   (setq _covarianceMatrix __covarianceMatrix)
   (setq _covarianceMatrixDim (round __covarianceMatrixDim))
   (setq _mean __mean)
   (setq _numMeans (round __numMeans))
   self)
  (:keys
   (&optional __keys)
   (if __keys (setq _keys __keys)) _keys)
  (:informationMatrix
   (&optional __informationMatrix)
   (if __informationMatrix (setq _informationMatrix __informationMatrix)) _informationMatrix)
  (:informationMatrixDim
   (&optional __informationMatrixDim)
   (if __informationMatrixDim (setq _informationMatrixDim __informationMatrixDim)) _informationMatrixDim)
  (:covarianceMatrix
   (&optional __covarianceMatrix)
   (if __covarianceMatrix (setq _covarianceMatrix __covarianceMatrix)) _covarianceMatrix)
  (:covarianceMatrixDim
   (&optional __covarianceMatrixDim)
   (if __covarianceMatrixDim (setq _covarianceMatrixDim __covarianceMatrixDim)) _covarianceMatrixDim)
  (:mean
   (&optional __mean)
   (if __mean (setq _mean __mean)) _mean)
  (:numMeans
   (&optional __numMeans)
   (if __numMeans (setq _numMeans __numMeans)) _numMeans)
  (:serialization-length
   ()
   (+
    ;; int16[] _keys
    (* 2    (length _keys)) 4
    ;; float32[] _informationMatrix
    (* 4    (length _informationMatrix)) 4
    ;; int16 _informationMatrixDim
    2
    ;; float32[] _covarianceMatrix
    (* 4    (length _covarianceMatrix)) 4
    ;; int16 _covarianceMatrixDim
    2
    ;; float32[] _mean
    (* 4    (length _mean)) 4
    ;; int16 _numMeans
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _keys
     (write-long (length _keys) s)
     (dotimes (i (length _keys))
       (write-word (elt _keys i) s)
       )
     ;; float32[] _informationMatrix
     (write-long (length _informationMatrix) s)
     (dotimes (i (length _informationMatrix))
       (sys::poke (elt _informationMatrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16 _informationMatrixDim
       (write-word _informationMatrixDim s)
     ;; float32[] _covarianceMatrix
     (write-long (length _covarianceMatrix) s)
     (dotimes (i (length _covarianceMatrix))
       (sys::poke (elt _covarianceMatrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16 _covarianceMatrixDim
       (write-word _covarianceMatrixDim s)
     ;; float32[] _mean
     (write-long (length _mean) s)
     (dotimes (i (length _mean))
       (sys::poke (elt _mean i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16 _numMeans
       (write-word _numMeans s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _keys i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _informationMatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _informationMatrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _informationMatrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16 _informationMatrixDim
     (setq _informationMatrixDim (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32[] _covarianceMatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _covarianceMatrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _covarianceMatrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16 _covarianceMatrixDim
     (setq _covarianceMatrixDim (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32[] _mean
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mean (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mean i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16 _numMeans
     (setq _numMeans (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get lio_sam::factors :md5sum-) "132517768e54222e9cb7f7948cccc70e")
(setf (get lio_sam::factors :datatype-) "lio_sam/factors")
(setf (get lio_sam::factors :definition-)
      "int16[] keys
float32[] informationMatrix
int16 informationMatrixDim
float32[] covarianceMatrix
int16 covarianceMatrixDim
float32[] mean
int16 numMeans
")



(provide :lio_sam/factors "132517768e54222e9cb7f7948cccc70e")


