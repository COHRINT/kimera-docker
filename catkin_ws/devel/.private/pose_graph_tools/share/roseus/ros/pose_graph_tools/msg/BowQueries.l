;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::BowQueries)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'BowQueries (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::BOWQUERIES")
  (make-package "POSE_GRAPH_TOOLS::BOWQUERIES"))

(in-package "ROS")
;;//! \htmlinclude BowQueries.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_graph_tools::BowQueries
  :super ros::object
  :slots (_header _destination_robot_id _queries ))

(defmethod pose_graph_tools::BowQueries
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:destination_robot_id __destination_robot_id) 0)
    ((:queries __queries) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _destination_robot_id (round __destination_robot_id))
   (setq _queries __queries)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:destination_robot_id
   (&optional __destination_robot_id)
   (if __destination_robot_id (setq _destination_robot_id __destination_robot_id)) _destination_robot_id)
  (:queries
   (&rest __queries)
   (if (keywordp (car __queries))
       (send* _queries __queries)
     (progn
       (if __queries (setq _queries (car __queries)))
       _queries)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _destination_robot_id
    4
    ;; pose_graph_tools/BowQuery[] _queries
    (apply #'+ (send-all _queries :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _destination_robot_id
       (write-long _destination_robot_id s)
     ;; pose_graph_tools/BowQuery[] _queries
     (write-long (length _queries) s)
     (dolist (elem _queries)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _destination_robot_id
     (setq _destination_robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pose_graph_tools/BowQuery[] _queries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _queries (let (r) (dotimes (i n) (push (instance pose_graph_tools::BowQuery :init) r)) r))
     (dolist (elem- _queries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pose_graph_tools::BowQueries :md5sum-) "80b67ea7bb31f6bc0188a59d8ca2119d")
(setf (get pose_graph_tools::BowQueries :datatype-) "pose_graph_tools/BowQueries")
(setf (get pose_graph_tools::BowQueries :definition-)
      "std_msgs/Header header
uint32 destination_robot_id
pose_graph_tools/BowQuery[] queries
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: pose_graph_tools/BowQuery
uint32 robot_id
uint32 pose_id
BowVector bow_vector
================================================================================
MSG: pose_graph_tools/BowVector
uint32[] word_ids
float32[] word_values
")



(provide :pose_graph_tools/BowQueries "80b67ea7bb31f6bc0188a59d8ca2119d")


