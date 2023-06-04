;; Auto-generated. Do not edit!


(when (boundp 'ros_topics_services::Bio)
  (if (not (find-package "ROS_TOPICS_SERVICES"))
    (make-package "ROS_TOPICS_SERVICES"))
  (shadow 'Bio (find-package "ROS_TOPICS_SERVICES")))
(unless (find-package "ROS_TOPICS_SERVICES::BIO")
  (make-package "ROS_TOPICS_SERVICES::BIO"))

(in-package "ROS")
;;//! \htmlinclude Bio.msg.html


(defclass ros_topics_services::Bio
  :super ros::object
  :slots (_name _age _height _weight _goal ))

(defmethod ros_topics_services::Bio
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:height __height) 0.0)
    ((:weight __weight) 0.0)
    ((:goal __goal) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _height (float __height))
   (setq _weight (float __weight))
   (setq _goal (string __goal))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _age
    4
    ;; float32 _height
    4
    ;; float32 _weight
    4
    ;; string _goal
    4 (length _goal)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _age
       (write-long _age s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _goal
       (write-long (length _goal) s) (princ _goal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _goal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_topics_services::Bio :md5sum-) "2f30f91b8986a298de0f6ddc671bda5b")
(setf (get ros_topics_services::Bio :datatype-) "ros_topics_services/Bio")
(setf (get ros_topics_services::Bio :definition-)
      "string name
int32 age
float32 height
float32 weight
string goal
")



(provide :ros_topics_services/Bio "2f30f91b8986a298de0f6ddc671bda5b")


