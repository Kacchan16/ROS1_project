#!/usr/bin/env python

import rospy
from std_srvs.srv import Empty
from geometry_msgs.msg import Twist
import math
import time

def move(speed, distance, is_forward):
    #declare a twist message to send velocity commands
    velocity_msg = Twist()
    # set the speed of robot
    if (speed > 0.4):
        print (" speed should be less than 0.4!!")
        
    
    if (is_forward):
        velocity_msg.linear.x = abs(speed)
    else:
        velocity_msg.linear.x = -abs(speed)

    distance_moved = 0.0
    loop_rate = rospy.Rate(5)
    vel_pub = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size=100 )
    
    t0 = rospy.Time.now().to_sec()

    while True:
        rospy.loginfo("turtle is ready to move")
        vel_pub.publish(velocity_msg)
        loop_rate.sleep()
        t1= rospy.Time.now().to_sec() #rospy.Duration(1.0)
        distance_moved = (t1-t0)*speed
        print( distance_moved)
        if not (distance_moved < distance):
            rospy.loginfo("reached")
            break
    #stop the robot

    velocity_msg.linear.x=0
    vel_pub.publish(velocity_msg)



def rotate(angular_speed_degree, rel_angle_degree, clockwise):
    angular_msg = Twist()
    angular_msg.linear.x=0
    angular_msg.linear.y=0
    angular_msg.linear.z=0
    angular_msg.angular.x=0
    angular_msg.angular.y=0
    angular_msg.angular.z=0

    angular_speed = math.radians(abs(angular_speed_degree))

    if (clockwise):
        angular_msg.angular.z = -abs(rel_angle_degree)
    else:
        angular_msg.angular.z = abs(rel_angle_degree)
    
    angle_rotated = 0.0
    loop_rate = rospy.Rate(10)

    ang_pub = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size=100)

    t0 = rospy.Time.now().to_sec()

    while True:
        rospy.loginfo(" turtle is rotating ..")
        ang_pub.publish(angular_msg)
        
        t1=rospy.Time.now().to_sec()
        angle_rotated = (t1-t0) * angular_speed_degree
        loop_rate.sleep()
        print (angle_rotated)
        if not (angle_rotated < rel_angle_degree):
            rospy.loginfo("reached rotation")
            break

    angular_msg.angular.z=0.0
    ang_pub.publish(angular_msg)


def go_to_goal(x_goal, y_goal):
    global x
    global y, z, yaw

    velocity_msg = Twist()
    cmd_vel_topic='/turtle1/cmd_vel'
    vel_pub = rospy.Publisher(cmd_vel_topic, Twist, queue_size=100)

    while (True):
        K_linear = 0.5 
        distance = abs(math.sqrt(((x_goal-x) ** 2) + ((y_goal-y) ** 2)))

        linear_speed = distance * K_linear

        K_angular = 4.0
        desired_angle_goal = math.atan2(y_goal-y, x_goal-x)
        angular_speed = (desired_angle_goal-yaw)*K_angular

        velocity_msg.linear.x = linear_speed
        velocity_msg.angular.z = angular_speed

        vel_pub.publish(velocity_msg)
        print ('x=', x, 'y=',y)

        if (distance <0.01):
            break


if __name__ == "__main__":
    try:
        rospy.init_node("turtle_bot_node", anonymous=True)
        move(1, 8, True)
        time.sleep(1)
        #rotate(90, 90, True)

    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated!!")