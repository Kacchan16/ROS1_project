#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('talker_topic',String, queue_size=10)
    rospy.init_node('talker_node', anonymous=True)
    rate=rospy.Rate(1)
    i=0
    while not rospy.is_shutdown():
        str_word= "welcome world %s" %i
        rospy.loginfo(str_word)
        pub.publish(str_word)
        rate.sleep()
        i=i+1


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
