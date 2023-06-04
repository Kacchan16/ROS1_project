;; Auto-generated. Do not edit!


(when (boundp 'ros_topics_services::RectangleArea)
  (if (not (find-package "ROS_TOPICS_SERVICES"))
    (make-package "ROS_TOPICS_SERVICES"))
  (shadow 'RectangleArea (find-package "ROS_TOPICS_SERVICES")))
(unless (find-package "ROS_TOPICS_SERVICES::RECTANGLEAREA")
  (make-package "ROS_TOPICS_SERVICES::RECTANGLEAREA"))
(unless (find-package "ROS_TOPICS_SERVICES::RECTANGLEAREAREQUEST")
  (make-package "ROS_TOPICS_SERVICES::RECTANGLEAREAREQUEST"))
(unless (find-package "ROS_TOPICS_SERVICES::RECTANGLEAREARESPONSE")
  (make-package "ROS_TOPICS_SERVICES::RECTANGLEAREARESPONSE"))

(in-package "ROS")





(defclass ros_topics_services::RectangleAreaRequest
  :super ros::object
  :slots (_height _length ))

(defmethod ros_topics_services::RectangleAreaRequest
  (:init
   (&key
    ((:height __height) 0)
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _length (round __length))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; int32 _height
    4
    ;; int32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _height
       (write-long _height s)
     ;; int32 _length
       (write-long _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_topics_services::RectangleAreaResponse
  :super ros::object
  :slots (_area ))

(defmethod ros_topics_services::RectangleAreaResponse
  (:init
   (&key
    ((:area __area) 0)
    )
   (send-super :init)
   (setq _area (round __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; int32 _area
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _area
       (write-long _area s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _area
     (setq _area (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_topics_services::RectangleArea
  :super ros::object
  :slots ())

(setf (get ros_topics_services::RectangleArea :md5sum-) "6b0cfd5befd2de410547c4b17bd912bb")
(setf (get ros_topics_services::RectangleArea :datatype-) "ros_topics_services/RectangleArea")
(setf (get ros_topics_services::RectangleArea :request) ros_topics_services::RectangleAreaRequest)
(setf (get ros_topics_services::RectangleArea :response) ros_topics_services::RectangleAreaResponse)

(defmethod ros_topics_services::RectangleAreaRequest
  (:response () (instance ros_topics_services::RectangleAreaResponse :init)))

(setf (get ros_topics_services::RectangleAreaRequest :md5sum-) "6b0cfd5befd2de410547c4b17bd912bb")
(setf (get ros_topics_services::RectangleAreaRequest :datatype-) "ros_topics_services/RectangleAreaRequest")
(setf (get ros_topics_services::RectangleAreaRequest :definition-)
      "#input 
int32 height
int32 length
---
#output
int32 area
")

(setf (get ros_topics_services::RectangleAreaResponse :md5sum-) "6b0cfd5befd2de410547c4b17bd912bb")
(setf (get ros_topics_services::RectangleAreaResponse :datatype-) "ros_topics_services/RectangleAreaResponse")
(setf (get ros_topics_services::RectangleAreaResponse :definition-)
      "#input 
int32 height
int32 length
---
#output
int32 area
")



(provide :ros_topics_services/RectangleArea "6b0cfd5befd2de410547c4b17bd912bb")


