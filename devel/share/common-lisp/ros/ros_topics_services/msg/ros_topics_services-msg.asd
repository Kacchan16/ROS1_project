
(cl:in-package :asdf)

(defsystem "ros_topics_services-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Bio" :depends-on ("_package_Bio"))
    (:file "_package_Bio" :depends-on ("_package"))
    (:file "IoTSensor" :depends-on ("_package_IoTSensor"))
    (:file "_package_IoTSensor" :depends-on ("_package"))
  ))