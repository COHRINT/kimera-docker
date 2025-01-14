;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::BowQuery)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'BowQuery (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::BOWQUERY")
  (make-package "POSE_GRAPH_TOOLS::BOWQUERY"))

(in-package "ROS")
;;//! \htmlinclude BowQuery.msg.html


(defclass pose_graph_tools::BowQuery
  :super ros::object
  :slots (_robot_id _pose_id _bow_vector ))

(defmethod pose_graph_tools::BowQuery
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:pose_id __pose_id) 0)
    ((:bow_vector __bow_vector) (instance pose_graph_tools::BowVector :init))
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _pose_id (round __pose_id))
   (setq _bow_vector __bow_vector)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:pose_id
   (&optional __pose_id)
   (if __pose_id (setq _pose_id __pose_id)) _pose_id)
  (:bow_vector
   (&rest __bow_vector)
   (if (keywordp (car __bow_vector))
       (send* _bow_vector __bow_vector)
     (progn
       (if __bow_vector (setq _bow_vector (car __bow_vector)))
       _bow_vector)))
  (:serialization-length
   ()
   (+
    ;; uint32 _robot_id
    4
    ;; uint32 _pose_id
    4
    ;; pose_graph_tools/BowVector _bow_vector
    (send _bow_vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _robot_id
       (write-long _robot_id s)
     ;; uint32 _pose_id
       (write-long _pose_id s)
     ;; pose_graph_tools/BowVector _bow_vector
       (send _bow_vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pose_id
     (setq _pose_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pose_graph_tools/BowVector _bow_vector
     (send _bow_vector :deserialize buf ptr-) (incf ptr- (send _bow_vector :serialization-length))
   ;;
   self)
  )

(setf (get pose_graph_tools::BowQuery :md5sum-) "a0cd5fc0bc344c45715e8fad77418231")
(setf (get pose_graph_tools::BowQuery :datatype-) "pose_graph_tools/BowQuery")
(setf (get pose_graph_tools::BowQuery :definition-)
      "uint32 robot_id
uint32 pose_id
BowVector bow_vector
================================================================================
MSG: pose_graph_tools/BowVector
uint32[] word_ids
float32[] word_values
")



(provide :pose_graph_tools/BowQuery "a0cd5fc0bc344c45715e8fad77418231")


