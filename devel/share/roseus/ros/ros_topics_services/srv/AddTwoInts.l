;; Auto-generated. Do not edit!


(when (boundp 'ros_topics_services::AddTwoInts)
  (if (not (find-package "ROS_TOPICS_SERVICES"))
    (make-package "ROS_TOPICS_SERVICES"))
  (shadow 'AddTwoInts (find-package "ROS_TOPICS_SERVICES")))
(unless (find-package "ROS_TOPICS_SERVICES::ADDTWOINTS")
  (make-package "ROS_TOPICS_SERVICES::ADDTWOINTS"))
(unless (find-package "ROS_TOPICS_SERVICES::ADDTWOINTSREQUEST")
  (make-package "ROS_TOPICS_SERVICES::ADDTWOINTSREQUEST"))
(unless (find-package "ROS_TOPICS_SERVICES::ADDTWOINTSRESPONSE")
  (make-package "ROS_TOPICS_SERVICES::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass ros_topics_services::AddTwoIntsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod ros_topics_services::AddTwoIntsRequest
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

(defclass ros_topics_services::AddTwoIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod ros_topics_services::AddTwoIntsResponse
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

(defclass ros_topics_services::AddTwoInts
  :super ros::object
  :slots ())

(setf (get ros_topics_services::AddTwoInts :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get ros_topics_services::AddTwoInts :datatype-) "ros_topics_services/AddTwoInts")
(setf (get ros_topics_services::AddTwoInts :request) ros_topics_services::AddTwoIntsRequest)
(setf (get ros_topics_services::AddTwoInts :response) ros_topics_services::AddTwoIntsResponse)

(defmethod ros_topics_services::AddTwoIntsRequest
  (:response () (instance ros_topics_services::AddTwoIntsResponse :init)))

(setf (get ros_topics_services::AddTwoIntsRequest :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get ros_topics_services::AddTwoIntsRequest :datatype-) "ros_topics_services/AddTwoIntsRequest")
(setf (get ros_topics_services::AddTwoIntsRequest :definition-)
      "#input
int32 a
int32 b
---
#output
int32 sum
")

(setf (get ros_topics_services::AddTwoIntsResponse :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get ros_topics_services::AddTwoIntsResponse :datatype-) "ros_topics_services/AddTwoIntsResponse")
(setf (get ros_topics_services::AddTwoIntsResponse :definition-)
      "#input
int32 a
int32 b
---
#output
int32 sum
")



(provide :ros_topics_services/AddTwoInts "f0b6d69ea10b0cf210cb349d58d59e8f")


