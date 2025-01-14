;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::LoopClosures)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'LoopClosures (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::LOOPCLOSURES")
  (make-package "POSE_GRAPH_TOOLS::LOOPCLOSURES"))

(in-package "ROS")
;;//! \htmlinclude LoopClosures.msg.html


(defclass pose_graph_tools::LoopClosures
  :super ros::object
  :slots (_publishing_robot_id _destination_robot_id _edges ))

(defmethod pose_graph_tools::LoopClosures
  (:init
   (&key
    ((:publishing_robot_id __publishing_robot_id) 0)
    ((:destination_robot_id __destination_robot_id) 0)
    ((:edges __edges) ())
    )
   (send-super :init)
   (setq _publishing_robot_id (round __publishing_robot_id))
   (setq _destination_robot_id (round __destination_robot_id))
   (setq _edges __edges)
   self)
  (:publishing_robot_id
   (&optional __publishing_robot_id)
   (if __publishing_robot_id (setq _publishing_robot_id __publishing_robot_id)) _publishing_robot_id)
  (:destination_robot_id
   (&optional __destination_robot_id)
   (if __destination_robot_id (setq _destination_robot_id __destination_robot_id)) _destination_robot_id)
  (:edges
   (&rest __edges)
   (if (keywordp (car __edges))
       (send* _edges __edges)
     (progn
       (if __edges (setq _edges (car __edges)))
       _edges)))
  (:serialization-length
   ()
   (+
    ;; uint16 _publishing_robot_id
    2
    ;; uint16 _destination_robot_id
    2
    ;; pose_graph_tools/PoseGraphEdge[] _edges
    (apply #'+ (send-all _edges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _publishing_robot_id
       (write-word _publishing_robot_id s)
     ;; uint16 _destination_robot_id
       (write-word _destination_robot_id s)
     ;; pose_graph_tools/PoseGraphEdge[] _edges
     (write-long (length _edges) s)
     (dolist (elem _edges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _publishing_robot_id
     (setq _publishing_robot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _destination_robot_id
     (setq _destination_robot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; pose_graph_tools/PoseGraphEdge[] _edges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edges (let (r) (dotimes (i n) (push (instance pose_graph_tools::PoseGraphEdge :init) r)) r))
     (dolist (elem- _edges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pose_graph_tools::LoopClosures :md5sum-) "4f4b270327fa0c480a57687e4837bab6")
(setf (get pose_graph_tools::LoopClosures :datatype-) "pose_graph_tools/LoopClosures")
(setf (get pose_graph_tools::LoopClosures :definition-)
      "uint16 publishing_robot_id
uint16 destination_robot_id
pose_graph_tools/PoseGraphEdge[] edges
================================================================================
MSG: pose_graph_tools/PoseGraphEdge
Header header

uint64 key_from
uint64 key_to

int32 robot_from
int32 robot_to

int32 type

# Type enums
int32 ODOM      = 0
int32 LOOPCLOSE = 1
int32 LANDMARK  = 2
int32 REJECTED_LOOPCLOSE = 3
int32 MESH = 4
int32 POSE_MESH = 5
int32 MESH_POSE = 6

# Transforms in ede
geometry_msgs/Pose pose
float64[36] covariance
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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :pose_graph_tools/LoopClosures "4f4b270327fa0c480a57687e4837bab6")


