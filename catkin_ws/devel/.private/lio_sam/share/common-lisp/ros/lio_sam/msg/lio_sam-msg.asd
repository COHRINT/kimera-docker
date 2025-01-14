
(cl:in-package :asdf)

(defsystem "lio_sam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ChannelFilter" :depends-on ("_package_ChannelFilter"))
    (:file "_package_ChannelFilter" :depends-on ("_package"))
    (:file "SLAMRequest" :depends-on ("_package_SLAMRequest"))
    (:file "_package_SLAMRequest" :depends-on ("_package"))
    (:file "cloud_info" :depends-on ("_package_cloud_info"))
    (:file "_package_cloud_info" :depends-on ("_package"))
    (:file "factors" :depends-on ("_package_factors"))
    (:file "_package_factors" :depends-on ("_package"))
  ))