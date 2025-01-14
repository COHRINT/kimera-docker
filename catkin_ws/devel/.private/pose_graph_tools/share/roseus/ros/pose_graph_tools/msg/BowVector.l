;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::BowVector)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'BowVector (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::BOWVECTOR")
  (make-package "POSE_GRAPH_TOOLS::BOWVECTOR"))

(in-package "ROS")
;;//! \htmlinclude BowVector.msg.html


(defclass pose_graph_tools::BowVector
  :super ros::object
  :slots (_word_ids _word_values ))

(defmethod pose_graph_tools::BowVector
  (:init
   (&key
    ((:word_ids __word_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:word_values __word_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _word_ids __word_ids)
   (setq _word_values __word_values)
   self)
  (:word_ids
   (&optional __word_ids)
   (if __word_ids (setq _word_ids __word_ids)) _word_ids)
  (:word_values
   (&optional __word_values)
   (if __word_values (setq _word_values __word_values)) _word_values)
  (:serialization-length
   ()
   (+
    ;; uint32[] _word_ids
    (* 4    (length _word_ids)) 4
    ;; float32[] _word_values
    (* 4    (length _word_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _word_ids
     (write-long (length _word_ids) s)
     (dotimes (i (length _word_ids))
       (write-long (elt _word_ids i) s)
       )
     ;; float32[] _word_values
     (write-long (length _word_values) s)
     (dotimes (i (length _word_values))
       (sys::poke (elt _word_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _word_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _word_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _word_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _word_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _word_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _word_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get pose_graph_tools::BowVector :md5sum-) "1902706b4fdbaef5678c8f0eeda681c4")
(setf (get pose_graph_tools::BowVector :datatype-) "pose_graph_tools/BowVector")
(setf (get pose_graph_tools::BowVector :definition-)
      "uint32[] word_ids
float32[] word_values
")



(provide :pose_graph_tools/BowVector "1902706b4fdbaef5678c8f0eeda681c4")


