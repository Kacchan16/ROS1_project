#!/user/bin/env python

import rospy
from std_msgs.msg import String

def callback_function(message):
    rospy.loginfo(rospy.get_caller_id() +" I heard %s", message.data)

def listener():
    rospy.init_node('listener_node', anonymous=True)
    sub = rospy.Subscriber('talker_topic',String,callback_function)
    rospy.spin()

if __name__== '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass