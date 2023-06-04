#!/usr/bin/env python
import rospy
from ros_topics_services.srv import AddTwoInts
from ros_topics_services.srv import AddTwoIntsResponse
from ros_topics_services.srv import AddTwoIntsRequest


def handle_add_ints_function(req):
    rospy.loginfo("Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b)))
    return AddTwoIntsResponse(req.a + req.b)



def main():
    rospy.init_node('add_two_ints_server')
    rospy.Service("add_two_ints_service", AddTwoInts, handle_add_ints_function)
    rospy.loginfo("we are ready to print two integers: ")
    rospy.spin()

if __name__ == '__main__':
    try:
        main()

    except rospy.ROSInterruptException:
        pass