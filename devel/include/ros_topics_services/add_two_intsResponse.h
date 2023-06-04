// Generated by gencpp from file ros_topics_services/add_two_intsResponse.msg
// DO NOT EDIT!


#ifndef ROS_TOPICS_SERVICES_MESSAGE_ADD_TWO_INTSRESPONSE_H
#define ROS_TOPICS_SERVICES_MESSAGE_ADD_TWO_INTSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_topics_services
{
template <class ContainerAllocator>
struct add_two_intsResponse_
{
  typedef add_two_intsResponse_<ContainerAllocator> Type;

  add_two_intsResponse_()
    : sum(0)  {
    }
  add_two_intsResponse_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int32_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct add_two_intsResponse_

typedef ::ros_topics_services::add_two_intsResponse_<std::allocator<void> > add_two_intsResponse;

typedef boost::shared_ptr< ::ros_topics_services::add_two_intsResponse > add_two_intsResponsePtr;
typedef boost::shared_ptr< ::ros_topics_services::add_two_intsResponse const> add_two_intsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator1> & lhs, const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator1> & lhs, const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_topics_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ba699c25c9418c0366f3595c0c8e8ec";
  }

  static const char* value(const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ba699c25c9418c0ULL;
  static const uint64_t static_value2 = 0x366f3595c0c8e8ecULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_topics_services/add_two_intsResponse";
  }

  static const char* value(const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#output\n"
"int32 sum\n"
;
  }

  static const char* value(const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct add_two_intsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_topics_services::add_two_intsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_topics_services::add_two_intsResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_TOPICS_SERVICES_MESSAGE_ADD_TWO_INTSRESPONSE_H