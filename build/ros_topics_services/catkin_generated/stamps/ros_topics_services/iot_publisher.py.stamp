#!/usr/bin/env python

import rospy
from ros_topics_services.msg import IoTSensor
import random

def iot_pub():
    pub = rospy.Publisher('iot_sensor_topic',IoTSensor,queue_size=100)
    rospy.init_node('iot_sensor_publisher_node',anonymous=True)
    rate=rospy.Rate(2)
    i=0
    while not rospy.is_shutdown():
        msg = IoTSensor()
        msg.id = i
        msg.device_name = "iot_stagging %s" %i
        msg.temperature= 24.33 + (random.random()*2)
        msg.humidity= 33 + (random.random()*2)
        rospy.loginfo("I publish: \n")
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()
        i=i+1


if __name__ == '__main__':
    try:
        iot_pub()
    except rospy.ROSInterruptException:
        pass