;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::PoseGraphEdge)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'PoseGraphEdge (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE")
  (make-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))

(in-package "ROS")
;;//! \htmlinclude PoseGraphEdge.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ODOM*" (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(shadow '*ODOM* (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(defconstant pose_graph_tools::PoseGraphEdge::*ODOM* 0)
(intern "*LOOPCLOSE*" (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(shadow '*LOOPCLOSE* (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(defconstant pose_graph_tools::PoseGraphEdge::*LOOPCLOSE* 1)
(intern "*LANDMARK*" (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(shadow '*LANDMARK* (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(defconstant pose_graph_tools::PoseGraphEdge::*LANDMARK* 2)
(intern "*REJECTED_LOOPCLOSE*" (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(shadow '*REJECTED_LOOPCLOSE* (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(defconstant pose_graph_tools::PoseGraphEdge::*REJECTED_LOOPCLOSE* 3)
(intern "*MESH*" (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(shadow '*MESH* (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(defconstant pose_graph_tools::PoseGraphEdge::*MESH* 4)
(intern "*POSE_MESH*" (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(shadow '*POSE_MESH* (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(defconstant pose_graph_tools::PoseGraphEdge::*POSE_MESH* 5)
(intern "*MESH_POSE*" (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(shadow '*MESH_POSE* (find-package "POSE_GRAPH_TOOLS::POSEGRAPHEDGE"))
(defconstant pose_graph_tools::PoseGraphEdge::*MESH_POSE* 6)

(defun pose_graph_tools::PoseGraphEdge-to-symbol (const)
  (cond
        ((= const 0) 'pose_graph_tools::PoseGraphEdge::*ODOM*)
        ((= const 1) 'pose_graph_tools::PoseGraphEdge::*LOOPCLOSE*)
        ((= const 2) 'pose_graph_tools::PoseGraphEdge::*LANDMARK*)
        ((= const 3) 'pose_graph_tools::PoseGraphEdge::*REJECTED_LOOPCLOSE*)
        ((= const 4) 'pose_graph_tools::PoseGraphEdge::*MESH*)
        ((= const 5) 'pose_graph_tools::PoseGraphEdge::*POSE_MESH*)
        ((= const 6) 'pose_graph_tools::PoseGraphEdge::*MESH_POSE*)
        (t nil)))

(defclass pose_graph_tools::PoseGraphEdge
  :super ros::object
  :slots (_header _key_from _key_to _robot_from _robot_to _type _pose _covariance ))

(defmethod pose_graph_tools::PoseGraphEdge
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:key_from __key_from) 0)
    ((:key_to __key_to) 0)
    ((:robot_from __robot_from) 0)
    ((:robot_to __robot_to) 0)
    ((:type __type) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _key_from (round __key_from))
   (setq _key_to (round __key_to))
   (setq _robot_from (round __robot_from))
   (setq _robot_to (round __robot_to))
   (setq _type (round __type))
   (setq _pose __pose)
   (setq _covariance __covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:key_from
   (&optional __key_from)
   (if __key_from (setq _key_from __key_from)) _key_from)
  (:key_to
   (&optional __key_to)
   (if __key_to (setq _key_to __key_to)) _key_to)
  (:robot_from
   (&optional __robot_from)
   (if __robot_from (setq _robot_from __robot_from)) _robot_from)
  (:robot_to
   (&optional __robot_to)
   (if __robot_to (setq _robot_to __robot_to)) _robot_to)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _key_from
    8
    ;; uint64 _key_to
    8
    ;; int32 _robot_from
    4
    ;; int32 _robot_to
    4
    ;; int32 _type
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _key_from
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_from (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_from) (= (length (_key_from . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_from . bv) 0) 0) s)
              (write-long (ash (elt (_key_from . bv) 1) -1) s))
             ((and (class _key_from) (= (length (_key_from . bv)) 1)) ;; big1
              (write-long (elt (_key_from . bv) 0) s)
              (write-long (if (>= _key_from 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_from s)(write-long (if (>= _key_from 0) 0 #xffffffff) s)))
     ;; uint64 _key_to
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_to (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_to) (= (length (_key_to . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_to . bv) 0) 0) s)
              (write-long (ash (elt (_key_to . bv) 1) -1) s))
             ((and (class _key_to) (= (length (_key_to . bv)) 1)) ;; big1
              (write-long (elt (_key_to . bv) 0) s)
              (write-long (if (>= _key_to 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_to s)(write-long (if (>= _key_to 0) 0 #xffffffff) s)))
     ;; int32 _robot_from
       (write-long _robot_from s)
     ;; int32 _robot_to
       (write-long _robot_to s)
     ;; int32 _type
       (write-long _type s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _key_from
     
#+(or :alpha :irix6 :x86_64)
      (setf _key_from (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_from (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _key_to
     
#+(or :alpha :irix6 :x86_64)
      (setf _key_to (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_to (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _robot_from
     (setq _robot_from (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_to
     (setq _robot_to (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get pose_graph_tools::PoseGraphEdge :md5sum-) "c891cedd80b91b7f1fa4a46b7d77a19f")
(setf (get pose_graph_tools::PoseGraphEdge :datatype-) "pose_graph_tools/PoseGraphEdge")
(setf (get pose_graph_tools::PoseGraphEdge :definition-)
      "Header header

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



(provide :pose_graph_tools/PoseGraphEdge "c891cedd80b91b7f1fa4a46b7d77a19f")


