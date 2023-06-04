#!/usr/bin/env python3
import rospy
from ros_topics_services.msg import Bio

def call_back_function(msg):
    rospy.loginfo("Received data is: (%s, %d, %d,%d, %s)", msg.name, msg.age, msg.height, msg.weight, msg.goal)

rospy.init_node('bio_subscriber_node', anonymous=True)
rospy.Subscriber("bio_topic", Bio, call_back_function)
rospy.spin()