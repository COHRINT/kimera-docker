;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::VLCRequests)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'VLCRequests (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::VLCREQUESTS")
  (make-package "POSE_GRAPH_TOOLS::VLCREQUESTS"))

(in-package "ROS")
;;//! \htmlinclude VLCRequests.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_graph_tools::VLCRequests
  :super ros::object
  :slots (_header _source_robot_id _destination_robot_id _pose_ids ))

(defmethod pose_graph_tools::VLCRequests
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source_robot_id __source_robot_id) 0)
    ((:destination_robot_id __destination_robot_id) 0)
    ((:pose_ids __pose_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _source_robot_id (round __source_robot_id))
   (setq _destination_robot_id (round __destination_robot_id))
   (setq _pose_ids __pose_ids)
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
  (:pose_ids
   (&optional __pose_ids)
   (if __pose_ids (setq _pose_ids __pose_ids)) _pose_ids)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _source_robot_id
    4
    ;; uint32 _destination_robot_id
    4
    ;; uint32[] _pose_ids
    (* 4    (length _pose_ids)) 4
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
     ;; uint32[] _pose_ids
     (write-long (length _pose_ids) s)
     (dotimes (i (length _pose_ids))
       (write-long (elt _pose_ids i) s)
       )
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
   ;; uint32[] _pose_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pose_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get pose_graph_tools::VLCRequests :md5sum-) "772d3c253526173250ad7a3a53433c14")
(setf (get pose_graph_tools::VLCRequests :datatype-) "pose_graph_tools/VLCRequests")
(setf (get pose_graph_tools::VLCRequests :definition-)
      "std_msgs/Header header
uint32 source_robot_id        # Robot that sends this request
uint32 destination_robot_id   # Robot that receives this request
uint32[] pose_ids             # Pose IDs of requested VLC frames of the destination robot 
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



(provide :pose_graph_tools/VLCRequests "772d3c253526173250ad7a3a53433c14")


