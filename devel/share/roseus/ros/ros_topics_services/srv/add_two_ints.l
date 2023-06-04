;; Auto-generated. Do not edit!


(when (boundp 'ros_topics_services::add_two_ints)
  (if (not (find-package "ROS_TOPICS_SERVICES"))
    (make-package "ROS_TOPICS_SERVICES"))
  (shadow 'add_two_ints (find-package "ROS_TOPICS_SERVICES")))
(unless (find-package "ROS_TOPICS_SERVICES::ADD_TWO_INTS")
  (make-package "ROS_TOPICS_SERVICES::ADD_TWO_INTS"))
(unless (find-package "ROS_TOPICS_SERVICES::ADD_TWO_INTSREQUEST")
  (make-package "ROS_TOPICS_SERVICES::ADD_TWO_INTSREQUEST"))
(unless (find-package "ROS_TOPICS_SERVICES::ADD_TWO_INTSRESPONSE")
  (make-package "ROS_TOPICS_SERVICES::ADD_TWO_INTSRESPONSE"))

(in-package "ROS")





(defclass ros_topics_services::add_two_intsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod ros_topics_services::add_two_intsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_topics_services::add_two_intsResponse
  :super ros::object
  :slots (_sum ))

(defmethod ros_topics_services::add_two_intsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_topics_services::add_two_ints
  :super ros::object
  :slots ())

(setf (get ros_topics_services::add_two_ints :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get ros_topics_services::add_two_ints :datatype-) "ros_topics_services/add_two_ints")
(setf (get ros_topics_services::add_two_ints :request) ros_topics_services::add_two_intsRequest)
(setf (get ros_topics_services::add_two_ints :response) ros_topics_services::add_two_intsResponse)

(defmethod ros_topics_services::add_two_intsRequest
  (:response () (instance ros_topics_services::add_two_intsResponse :init)))

(setf (get ros_topics_services::add_two_intsRequest :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get ros_topics_services::add_two_intsRequest :datatype-) "ros_topics_services/add_two_intsRequest")
(setf (get ros_topics_services::add_two_intsRequest :definition-)
      "#input
int32 a
int32 b
---
#output
int32 sum
")

(setf (get ros_topics_services::add_two_intsResponse :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get ros_topics_services::add_two_intsResponse :datatype-) "ros_topics_services/add_two_intsResponse")
(setf (get ros_topics_services::add_two_intsResponse :definition-)
      "#input
int32 a
int32 b
---
#output
int32 sum
")



(provide :ros_topics_services/add_two_ints "f0b6d69ea10b0cf210cb349d58d59e8f")


