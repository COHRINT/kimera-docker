;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::LoopClosuresAck)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'LoopClosuresAck (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::LOOPCLOSURESACK")
  (make-package "POSE_GRAPH_TOOLS::LOOPCLOSURESACK"))

(in-package "ROS")
;;//! \htmlinclude LoopClosuresAck.msg.html


(defclass pose_graph_tools::LoopClosuresAck
  :super ros::object
  :slots (_publishing_robot_id _destination_robot_id _robot_src _frame_src _robot_dst _frame_dst ))

(defmethod pose_graph_tools::LoopClosuresAck
  (:init
   (&key
    ((:publishing_robot_id __publishing_robot_id) 0)
    ((:destination_robot_id __destination_robot_id) 0)
    ((:robot_src __robot_src) (make-array 0 :initial-element 0 :element-type :integer))
    ((:frame_src __frame_src) (make-array 0 :initial-element 0 :element-type :integer))
    ((:robot_dst __robot_dst) (make-array 0 :initial-element 0 :element-type :integer))
    ((:frame_dst __frame_dst) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _publishing_robot_id (round __publishing_robot_id))
   (setq _destination_robot_id (round __destination_robot_id))
   (setq _robot_src __robot_src)
   (setq _frame_src __frame_src)
   (setq _robot_dst __robot_dst)
   (setq _frame_dst __frame_dst)
   self)
  (:publishing_robot_id
   (&optional __publishing_robot_id)
   (if __publishing_robot_id (setq _publishing_robot_id __publishing_robot_id)) _publishing_robot_id)
  (:destination_robot_id
   (&optional __destination_robot_id)
   (if __destination_robot_id (setq _destination_robot_id __destination_robot_id)) _destination_robot_id)
  (:robot_src
   (&optional __robot_src)
   (if __robot_src (setq _robot_src __robot_src)) _robot_src)
  (:frame_src
   (&optional __frame_src)
   (if __frame_src (setq _frame_src __frame_src)) _frame_src)
  (:robot_dst
   (&optional __robot_dst)
   (if __robot_dst (setq _robot_dst __robot_dst)) _robot_dst)
  (:frame_dst
   (&optional __frame_dst)
   (if __frame_dst (setq _frame_dst __frame_dst)) _frame_dst)
  (:serialization-length
   ()
   (+
    ;; uint16 _publishing_robot_id
    2
    ;; uint16 _destination_robot_id
    2
    ;; uint32[] _robot_src
    (* 4    (length _robot_src)) 4
    ;; uint32[] _frame_src
    (* 4    (length _frame_src)) 4
    ;; uint32[] _robot_dst
    (* 4    (length _robot_dst)) 4
    ;; uint32[] _frame_dst
    (* 4    (length _frame_dst)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _publishing_robot_id
       (write-word _publishing_robot_id s)
     ;; uint16 _destination_robot_id
       (write-word _destination_robot_id s)
     ;; uint32[] _robot_src
     (write-long (length _robot_src) s)
     (dotimes (i (length _robot_src))
       (write-long (elt _robot_src i) s)
       )
     ;; uint32[] _frame_src
     (write-long (length _frame_src) s)
     (dotimes (i (length _frame_src))
       (write-long (elt _frame_src i) s)
       )
     ;; uint32[] _robot_dst
     (write-long (length _robot_dst) s)
     (dotimes (i (length _robot_dst))
       (write-long (elt _robot_dst i) s)
       )
     ;; uint32[] _frame_dst
     (write-long (length _frame_dst) s)
     (dotimes (i (length _frame_dst))
       (write-long (elt _frame_dst i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _publishing_robot_id
     (setq _publishing_robot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _destination_robot_id
     (setq _destination_robot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32[] _robot_src
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_src (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _robot_src i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _frame_src
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frame_src (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _frame_src i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _robot_dst
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_dst (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _robot_dst i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _frame_dst
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frame_dst (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _frame_dst i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get pose_graph_tools::LoopClosuresAck :md5sum-) "a9c7cfa8a3ce5c724d171d7076a7f930")
(setf (get pose_graph_tools::LoopClosuresAck :datatype-) "pose_graph_tools/LoopClosuresAck")
(setf (get pose_graph_tools::LoopClosuresAck :definition-)
      "uint16 publishing_robot_id
uint16 destination_robot_id
uint32[] robot_src
uint32[] frame_src
uint32[] robot_dst
uint32[] frame_dst
")



(provide :pose_graph_tools/LoopClosuresAck "a9c7cfa8a3ce5c724d171d7076a7f930")


