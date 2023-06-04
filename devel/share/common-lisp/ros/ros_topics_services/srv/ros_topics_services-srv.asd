
(cl:in-package :asdf)

(defsystem "ros_topics_services-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "RectangleArea" :depends-on ("_package_RectangleArea"))
    (:file "_package_RectangleArea" :depends-on ("_package"))
  ))