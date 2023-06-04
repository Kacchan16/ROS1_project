#!/usr/bin/env python
import rospy
from ros_topics_services.msg import IoTSensor

def call_back_function(msg):
    rospy.loginfo("My received data is : (%d, %s, %.2f, %.2f)", msg.id, msg.device_name, msg.temperature, msg.humidity )

def iot_sub():
    rospy.init_node('iot_sensor_subscriber_node',anonymous=True)
    sub = rospy.Subscriber("iot_sensor_topic",IoTSensor, call_back_function)
    rospy.spin()

if __name__ == '__main__':
    try:
        iot_sub()
    except rospy.ROSInterruptException:
        pass

