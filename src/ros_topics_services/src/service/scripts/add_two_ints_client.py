#!/usr/bin/env python
import rospy
import sys

from ros_topics_services.srv import AddTwoInts
from ros_topics_services.srv import AddTwoIntsResponse
from ros_topics_services.srv import AddTwoIntsRequest


def add_two_ints_client(x, y):
    rospy.wait_for_service('add_two_ints_service')
    try:
        add_two_ints = rospy.ServiceProxy('add_two_ints_service', AddTwoInts)
        resp1 = add_two_ints(x, y)
        return resp1.sum
    except rospy.ServiceException(e):
        print ("Service call failed: %s"%e)

def usage():
    return 

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        
        print ("%s [x y]"%sys.argv[0])
        sys.exit(1)
    print ("Requesting %s+%s"%(x, y))
    s = add_two_ints_client(x, y)
    print ("%s + %s = %s"%(x, y, s))