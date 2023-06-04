#!/usr/bin/env python

import rospy
from ros_topics_services.msg import Bio
import random

pub=rospy.Publisher("bio_topic",Bio, queue_size=20)
rospy.init_node("bio_publisher_node", anonymous=True)
rate = rospy.Rate(3)
i=0
while not rospy.is_shutdown():
    msg= Bio()
    msg.name = "player %s" %i
    msg.age = 20 + i
    msg.weight = (random.random()*2)
    msg.height = (random.random()*3)
    msg.goal= "Crciketer "
    rospy.loginfo("data is publsihing")
    rospy.loginfo(msg)
    pub.publish(msg)
    rate.sleep()
    i=i+1

