;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::TimeRangeQuery)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'TimeRangeQuery (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::TIMERANGEQUERY")
  (make-package "POSE_GRAPH_TOOLS::TIMERANGEQUERY"))

(in-package "ROS")
;;//! \htmlinclude TimeRangeQuery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_graph_tools::TimeRangeQuery
  :super ros::object
  :slots (_header _source_robot_id _destination_robot_id _start _end ))

(defmethod pose_graph_tools::TimeRangeQuery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source_robot_id __source_robot_id) 0)
    ((:destination_robot_id __destination_robot_id) 0)
    ((:start __start) (instance ros::time :init))
    ((:end __end) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _source_robot_id (round __source_robot_id))
   (setq _destination_robot_id (round __destination_robot_id))
   (setq _start __start)
   (setq _end __end)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source_robot_id
   (&optional __source_robot_id)
   (if __source_robot_id (setq _source_robot_id __source_robot_id)) _source_robot_id)
  (:destination_robot_id
   (&optional __destination_robot_id)
   (if __destination_robot_id (setq _destination_robot_id __destination_robot_id)) _destination_robot_id)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _source_robot_id
    4
    ;; uint32 _destination_robot_id
    4
    ;; time _start
    8
    ;; time _end
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _source_robot_id
       (write-long _source_robot_id s)
     ;; uint32 _destination_robot_id
       (write-long _destination_robot_id s)
     ;; time _start
       (write-long (send _start :sec) s) (write-long (send _start :nsec) s)
     ;; time _end
       (write-long (send _end :sec) s) (write-long (send _end :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _source_robot_id
     (setq _source_robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _destination_robot_id
     (setq _destination_robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _start
     (send _start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _end
     (send _end :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _end :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pose_graph_tools::TimeRangeQuery :md5sum-) "8850a010b4d3f62be955d67ff24be89e")
(setf (get pose_graph_tools::TimeRangeQuery :datatype-) "pose_graph_tools/TimeRangeQuery")
(setf (get pose_graph_tools::TimeRangeQuery :definition-)
      "std_msgs/Header header
uint32 source_robot_id        # Robot that sends this request
uint32 destination_robot_id   # Robot that receives this request
time start                    # Start of time range
time end                      # End of time range

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

")



(provide :pose_graph_tools/TimeRangeQuery "8850a010b4d3f62be955d67ff24be89e")


