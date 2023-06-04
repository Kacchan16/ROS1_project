#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

using namespace std;

int main(int argc, char **argv)
{
    ros::init (argc, argv, "talker_node");

    ros::NodeHandle n;
    ros::Publisher talker_publisher=n.advertise<std_msgs::String>("talker_topic", 100);
    ros::Rate loop_rate(2);
    int count=0;
    while (ros::ok())
    {
        std_msgs::String msg;
        std::stringstream ss;
        ss << "Welcome world " << count;
        msg.data == ss.str();
        ROS_INFO("[Talker] I publsihed %s \n", msg.data.c_str() );
        talker_publisher.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
        count++;
    }
    return 0;
}
