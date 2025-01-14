
(cl:in-package :asdf)

(defsystem "pose_graph_tools-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :pose_graph_tools-msg
)
  :components ((:file "_package")
    (:file "LcdFrameRegistration" :depends-on ("_package_LcdFrameRegistration"))
    (:file "_package_LcdFrameRegistration" :depends-on ("_package"))
    (:file "PoseGraphQuery" :depends-on ("_package_PoseGraphQuery"))
    (:file "_package_PoseGraphQuery" :depends-on ("_package"))
    (:file "VLCFrameQuery" :depends-on ("_package_VLCFrameQuery"))
    (:file "_package_VLCFrameQuery" :depends-on ("_package"))
  ))