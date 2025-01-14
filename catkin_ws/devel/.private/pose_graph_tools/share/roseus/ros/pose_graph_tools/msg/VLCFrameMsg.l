;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::VLCFrameMsg)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'VLCFrameMsg (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::VLCFRAMEMSG")
  (make-package "POSE_GRAPH_TOOLS::VLCFRAMEMSG"))

(in-package "ROS")
;;//! \htmlinclude VLCFrameMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass pose_graph_tools::VLCFrameMsg
  :super ros::object
  :slots (_robot_id _pose_id _submap_id _descriptors_mat _versors _depths _T_submap_pose ))

(defmethod pose_graph_tools::VLCFrameMsg
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:pose_id __pose_id) 0)
    ((:submap_id __submap_id) 0)
    ((:descriptors_mat __descriptors_mat) (instance sensor_msgs::Image :init))
    ((:versors __versors) (instance sensor_msgs::PointCloud2 :init))
    ((:depths __depths) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:T_submap_pose __T_submap_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _pose_id (round __pose_id))
   (setq _submap_id (round __submap_id))
   (setq _descriptors_mat __descriptors_mat)
   (setq _versors __versors)
   (setq _depths __depths)
   (setq _T_submap_pose __T_submap_pose)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:pose_id
   (&optional __pose_id)
   (if __pose_id (setq _pose_id __pose_id)) _pose_id)
  (:submap_id
   (&optional __submap_id)
   (if __submap_id (setq _submap_id __submap_id)) _submap_id)
  (:descriptors_mat
   (&rest __descriptors_mat)
   (if (keywordp (car __descriptors_mat))
       (send* _descriptors_mat __descriptors_mat)
     (progn
       (if __descriptors_mat (setq _descriptors_mat (car __descriptors_mat)))
       _descriptors_mat)))
  (:versors
   (&rest __versors)
   (if (keywordp (car __versors))
       (send* _versors __versors)
     (progn
       (if __versors (setq _versors (car __versors)))
       _versors)))
  (:depths
   (&optional __depths)
   (if __depths (setq _depths __depths)) _depths)
  (:T_submap_pose
   (&rest __T_submap_pose)
   (if (keywordp (car __T_submap_pose))
       (send* _T_submap_pose __T_submap_pose)
     (progn
       (if __T_submap_pose (setq _T_submap_pose (car __T_submap_pose)))
       _T_submap_pose)))
  (:serialization-length
   ()
   (+
    ;; uint32 _robot_id
    4
    ;; uint32 _pose_id
    4
    ;; uint32 _submap_id
    4
    ;; sensor_msgs/Image _descriptors_mat
    (send _descriptors_mat :serialization-length)
    ;; sensor_msgs/PointCloud2 _versors
    (send _versors :serialization-length)
    ;; float32[] _depths
    (* 4    (length _depths)) 4
    ;; geometry_msgs/Pose _T_submap_pose
    (send _T_submap_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _robot_id
       (write-long _robot_id s)
     ;; uint32 _pose_id
       (write-long _pose_id s)
     ;; uint32 _submap_id
       (write-long _submap_id s)
     ;; sensor_msgs/Image _descriptors_mat
       (send _descriptors_mat :serialize s)
     ;; sensor_msgs/PointCloud2 _versors
       (send _versors :serialize s)
     ;; float32[] _depths
     (write-long (length _depths) s)
     (dotimes (i (length _depths))
       (sys::poke (elt _depths i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose _T_submap_pose
       (send _T_submap_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pose_id
     (setq _pose_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _submap_id
     (setq _submap_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/Image _descriptors_mat
     (send _descriptors_mat :deserialize buf ptr-) (incf ptr- (send _descriptors_mat :serialization-length))
   ;; sensor_msgs/PointCloud2 _versors
     (send _versors :deserialize buf ptr-) (incf ptr- (send _versors :serialization-length))
   ;; float32[] _depths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _depths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _depths i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose _T_submap_pose
     (send _T_submap_pose :deserialize buf ptr-) (incf ptr- (send _T_submap_pose :serialization-length))
   ;;
   self)
  )

(setf (get pose_graph_tools::VLCFrameMsg :md5sum-) "70e4942085963ea1587c0cf8d031e3fc")
(setf (get pose_graph_tools::VLCFrameMsg :datatype-) "pose_graph_tools/VLCFrameMsg")
(setf (get pose_graph_tools::VLCFrameMsg :definition-)
      "uint32 robot_id
uint32 pose_id
uint32 submap_id
sensor_msgs/Image descriptors_mat          # Descriptor of all keypoints stored as a matrix.
sensor_msgs/PointCloud2 versors            # Bearing vector of each keypoint expressed as a 3D vector.
float32[] depths                           # Depth of each keypoint. The 3D keypoint v can be recovered from the depth d and bearing u by v = d * u / u[2]
geometry_msgs/Pose T_submap_pose
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

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



(provide :pose_graph_tools/VLCFrameMsg "70e4942085963ea1587c0cf8d031e3fc")


