;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::PoseGraphQuery)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'PoseGraphQuery (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::POSEGRAPHQUERY")
  (make-package "POSE_GRAPH_TOOLS::POSEGRAPHQUERY"))
(unless (find-package "POSE_GRAPH_TOOLS::POSEGRAPHQUERYREQUEST")
  (make-package "POSE_GRAPH_TOOLS::POSEGRAPHQUERYREQUEST"))
(unless (find-package "POSE_GRAPH_TOOLS::POSEGRAPHQUERYRESPONSE")
  (make-package "POSE_GRAPH_TOOLS::POSEGRAPHQUERYRESPONSE"))

(in-package "ROS")





(defclass pose_graph_tools::PoseGraphQueryRequest
  :super ros::object
  :slots (_robot_id ))

(defmethod pose_graph_tools::PoseGraphQueryRequest
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; uint16 _robot_id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _robot_id
       (write-word _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _robot_id
     (setq _robot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass pose_graph_tools::PoseGraphQueryResponse
  :super ros::object
  :slots (_pose_graph ))

(defmethod pose_graph_tools::PoseGraphQueryResponse
  (:init
   (&key
    ((:pose_graph __pose_graph) (instance pose_graph_tools::PoseGraph :init))
    )
   (send-super :init)
   (setq _pose_graph __pose_graph)
   self)
  (:pose_graph
   (&rest __pose_graph)
   (if (keywordp (car __pose_graph))
       (send* _pose_graph __pose_graph)
     (progn
       (if __pose_graph (setq _pose_graph (car __pose_graph)))
       _pose_graph)))
  (:serialization-length
   ()
   (+
    ;; pose_graph_tools/PoseGraph _pose_graph
    (send _pose_graph :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pose_graph_tools/PoseGraph _pose_graph
       (send _pose_graph :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pose_graph_tools/PoseGraph _pose_graph
     (send _pose_graph :deserialize buf ptr-) (incf ptr- (send _pose_graph :serialization-length))
   ;;
   self)
  )

(defclass pose_graph_tools::PoseGraphQuery
  :super ros::object
  :slots ())

(setf (get pose_graph_tools::PoseGraphQuery :md5sum-) "40dc150d34e522c5c9dc2d4c5d84a9d7")
(setf (get pose_graph_tools::PoseGraphQuery :datatype-) "pose_graph_tools/PoseGraphQuery")
(setf (get pose_graph_tools::PoseGraphQuery :request) pose_graph_tools::PoseGraphQueryRequest)
(setf (get pose_graph_tools::PoseGraphQuery :response) pose_graph_tools::PoseGraphQueryResponse)

(defmethod pose_graph_tools::PoseGraphQueryRequest
  (:response () (instance pose_graph_tools::PoseGraphQueryResponse :init)))

(setf (get pose_graph_tools::PoseGraphQueryRequest :md5sum-) "40dc150d34e522c5c9dc2d4c5d84a9d7")
(setf (get pose_graph_tools::PoseGraphQueryRequest :datatype-) "pose_graph_tools/PoseGraphQueryRequest")
(setf (get pose_graph_tools::PoseGraphQueryRequest :definition-)
      "uint16 robot_id
---
pose_graph_tools/PoseGraph pose_graph

================================================================================
MSG: pose_graph_tools/PoseGraph
Header header

# Nodes and edges
PoseGraphNode[] nodes
PoseGraphEdge[] edges
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
MSG: pose_graph_tools/PoseGraphNode
Header header

int32 robot_id

uint64 key

geometry_msgs/Pose pose
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
")

(setf (get pose_graph_tools::PoseGraphQueryResponse :md5sum-) "40dc150d34e522c5c9dc2d4c5d84a9d7")
(setf (get pose_graph_tools::PoseGraphQueryResponse :datatype-) "pose_graph_tools/PoseGraphQueryResponse")
(setf (get pose_graph_tools::PoseGraphQueryResponse :definition-)
      "uint16 robot_id
---
pose_graph_tools/PoseGraph pose_graph

================================================================================
MSG: pose_graph_tools/PoseGraph
Header header

# Nodes and edges
PoseGraphNode[] nodes
PoseGraphEdge[] edges
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
MSG: pose_graph_tools/PoseGraphNode
Header header

int32 robot_id

uint64 key

geometry_msgs/Pose pose
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
")



(provide :pose_graph_tools/PoseGraphQuery "40dc150d34e522c5c9dc2d4c5d84a9d7")


