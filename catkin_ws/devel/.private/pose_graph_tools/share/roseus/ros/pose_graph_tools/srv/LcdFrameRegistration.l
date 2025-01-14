;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::LcdFrameRegistration)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'LcdFrameRegistration (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::LCDFRAMEREGISTRATION")
  (make-package "POSE_GRAPH_TOOLS::LCDFRAMEREGISTRATION"))
(unless (find-package "POSE_GRAPH_TOOLS::LCDFRAMEREGISTRATIONREQUEST")
  (make-package "POSE_GRAPH_TOOLS::LCDFRAMEREGISTRATIONREQUEST"))
(unless (find-package "POSE_GRAPH_TOOLS::LCDFRAMEREGISTRATIONRESPONSE")
  (make-package "POSE_GRAPH_TOOLS::LCDFRAMEREGISTRATIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pose_graph_tools::LcdFrameRegistrationRequest
  :super ros::object
  :slots (_query_robot _match_robot _query _match ))

(defmethod pose_graph_tools::LcdFrameRegistrationRequest
  (:init
   (&key
    ((:query_robot __query_robot) 0)
    ((:match_robot __match_robot) 0)
    ((:query __query) 0)
    ((:match __match) 0)
    )
   (send-super :init)
   (setq _query_robot (round __query_robot))
   (setq _match_robot (round __match_robot))
   (setq _query (round __query))
   (setq _match (round __match))
   self)
  (:query_robot
   (&optional __query_robot)
   (if __query_robot (setq _query_robot __query_robot)) _query_robot)
  (:match_robot
   (&optional __match_robot)
   (if __match_robot (setq _match_robot __match_robot)) _match_robot)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:match
   (&optional __match)
   (if __match (setq _match __match)) _match)
  (:serialization-length
   ()
   (+
    ;; uint64 _query_robot
    8
    ;; uint64 _match_robot
    8
    ;; uint64 _query
    8
    ;; uint64 _match
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _query_robot
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _query_robot (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _query_robot) (= (length (_query_robot . bv)) 2)) ;; bignum
              (write-long (ash (elt (_query_robot . bv) 0) 0) s)
              (write-long (ash (elt (_query_robot . bv) 1) -1) s))
             ((and (class _query_robot) (= (length (_query_robot . bv)) 1)) ;; big1
              (write-long (elt (_query_robot . bv) 0) s)
              (write-long (if (>= _query_robot 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _query_robot s)(write-long (if (>= _query_robot 0) 0 #xffffffff) s)))
     ;; uint64 _match_robot
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _match_robot (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _match_robot) (= (length (_match_robot . bv)) 2)) ;; bignum
              (write-long (ash (elt (_match_robot . bv) 0) 0) s)
              (write-long (ash (elt (_match_robot . bv) 1) -1) s))
             ((and (class _match_robot) (= (length (_match_robot . bv)) 1)) ;; big1
              (write-long (elt (_match_robot . bv) 0) s)
              (write-long (if (>= _match_robot 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _match_robot s)(write-long (if (>= _match_robot 0) 0 #xffffffff) s)))
     ;; uint64 _query
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _query (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _query) (= (length (_query . bv)) 2)) ;; bignum
              (write-long (ash (elt (_query . bv) 0) 0) s)
              (write-long (ash (elt (_query . bv) 1) -1) s))
             ((and (class _query) (= (length (_query . bv)) 1)) ;; big1
              (write-long (elt (_query . bv) 0) s)
              (write-long (if (>= _query 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _query s)(write-long (if (>= _query 0) 0 #xffffffff) s)))
     ;; uint64 _match
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _match (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _match) (= (length (_match . bv)) 2)) ;; bignum
              (write-long (ash (elt (_match . bv) 0) 0) s)
              (write-long (ash (elt (_match . bv) 1) -1) s))
             ((and (class _match) (= (length (_match . bv)) 1)) ;; big1
              (write-long (elt (_match . bv) 0) s)
              (write-long (if (>= _match 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _match s)(write-long (if (>= _match 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _query_robot
     
#+(or :alpha :irix6 :x86_64)
      (setf _query_robot (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _query_robot (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _match_robot
     
#+(or :alpha :irix6 :x86_64)
      (setf _match_robot (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _match_robot (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _query
     
#+(or :alpha :irix6 :x86_64)
      (setf _query (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _query (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _match
     
#+(or :alpha :irix6 :x86_64)
      (setf _match (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _match (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass pose_graph_tools::LcdFrameRegistrationResponse
  :super ros::object
  :slots (_valid _match_T_query ))

(defmethod pose_graph_tools::LcdFrameRegistrationResponse
  (:init
   (&key
    ((:valid __valid) nil)
    ((:match_T_query __match_T_query) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _match_T_query __match_T_query)
   self)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:match_T_query
   (&rest __match_T_query)
   (if (keywordp (car __match_T_query))
       (send* _match_T_query __match_T_query)
     (progn
       (if __match_T_query (setq _match_T_query (car __match_T_query)))
       _match_T_query)))
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ;; geometry_msgs/Pose _match_T_query
    (send _match_T_query :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _match_T_query
       (send _match_T_query :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _match_T_query
     (send _match_T_query :deserialize buf ptr-) (incf ptr- (send _match_T_query :serialization-length))
   ;;
   self)
  )

(defclass pose_graph_tools::LcdFrameRegistration
  :super ros::object
  :slots ())

(setf (get pose_graph_tools::LcdFrameRegistration :md5sum-) "35f0b877789b9625f9ce0e88684ba2e8")
(setf (get pose_graph_tools::LcdFrameRegistration :datatype-) "pose_graph_tools/LcdFrameRegistration")
(setf (get pose_graph_tools::LcdFrameRegistration :request) pose_graph_tools::LcdFrameRegistrationRequest)
(setf (get pose_graph_tools::LcdFrameRegistration :response) pose_graph_tools::LcdFrameRegistrationResponse)

(defmethod pose_graph_tools::LcdFrameRegistrationRequest
  (:response () (instance pose_graph_tools::LcdFrameRegistrationResponse :init)))

(setf (get pose_graph_tools::LcdFrameRegistrationRequest :md5sum-) "35f0b877789b9625f9ce0e88684ba2e8")
(setf (get pose_graph_tools::LcdFrameRegistrationRequest :datatype-) "pose_graph_tools/LcdFrameRegistrationRequest")
(setf (get pose_graph_tools::LcdFrameRegistrationRequest :definition-)
      "uint64 query_robot
uint64 match_robot
uint64 query
uint64 match
---
bool valid
geometry_msgs/Pose match_T_query


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

(setf (get pose_graph_tools::LcdFrameRegistrationResponse :md5sum-) "35f0b877789b9625f9ce0e88684ba2e8")
(setf (get pose_graph_tools::LcdFrameRegistrationResponse :datatype-) "pose_graph_tools/LcdFrameRegistrationResponse")
(setf (get pose_graph_tools::LcdFrameRegistrationResponse :definition-)
      "uint64 query_robot
uint64 match_robot
uint64 query
uint64 match
---
bool valid
geometry_msgs/Pose match_T_query


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



(provide :pose_graph_tools/LcdFrameRegistration "35f0b877789b9625f9ce0e88684ba2e8")


