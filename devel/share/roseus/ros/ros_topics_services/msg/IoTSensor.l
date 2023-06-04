;; Auto-generated. Do not edit!


(when (boundp 'ros_topics_services::IoTSensor)
  (if (not (find-package "ROS_TOPICS_SERVICES"))
    (make-package "ROS_TOPICS_SERVICES"))
  (shadow 'IoTSensor (find-package "ROS_TOPICS_SERVICES")))
(unless (find-package "ROS_TOPICS_SERVICES::IOTSENSOR")
  (make-package "ROS_TOPICS_SERVICES::IOTSENSOR"))

(in-package "ROS")
;;//! \htmlinclude IoTSensor.msg.html


(defclass ros_topics_services::IoTSensor
  :super ros::object
  :slots (_id _device_name _temperature _humidity ))

(defmethod ros_topics_services::IoTSensor
  (:init
   (&key
    ((:id __id) 0)
    ((:device_name __device_name) "")
    ((:temperature __temperature) 0.0)
    ((:humidity __humidity) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _device_name (string __device_name))
   (setq _temperature (float __temperature))
   (setq _humidity (float __humidity))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _device_name
    4 (length _device_name)
    ;; float32 _temperature
    4
    ;; float32 _humidity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _humidity
     (setq _humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_topics_services::IoTSensor :md5sum-) "52c500a928f374dd7e41833541966a53")
(setf (get ros_topics_services::IoTSensor :datatype-) "ros_topics_services/IoTSensor")
(setf (get ros_topics_services::IoTSensor :definition-)
      "int32 id
string device_name
float32 temperature
float32 humidity
")



(provide :ros_topics_services/IoTSensor "52c500a928f374dd7e41833541966a53")


