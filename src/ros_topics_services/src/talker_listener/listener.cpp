#include "ros/ros.h"
#include "std_msgs/String.h"


void callback_function(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("[Listener] I heard: [%s] \n", msg->data.c_str());
}

int main(int argc,char **argv)
{
    ros::init(argc, argv, "listener_node");
    ros::NodeHandle node;
    ros::Subscriber sub = node.subscribe("talker_topic", 100, callback_function);
    ros::spin();

    return 0;
}