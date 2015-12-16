// Generated by gencpp from file minnow/Boat.msg
// DO NOT EDIT!


#ifndef MINNOW_MESSAGE_BOAT_H
#define MINNOW_MESSAGE_BOAT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace minnow
{
template <class ContainerAllocator>
struct Boat_
{
  typedef Boat_<ContainerAllocator> Type;

  Boat_()
    : header()
    , status(0)
    , pitch(0.0)
    , roll(0.0)
    , yaw(0.0)
    , rudder(0.0)
    , throttle(0.0)  {
    }
  Boat_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(0)
    , pitch(0.0)
    , roll(0.0)
    , yaw(0.0)
    , rudder(0.0)
    , throttle(0.0)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _status_type;
  _status_type status;

   typedef float _pitch_type;
  _pitch_type pitch;

   typedef float _roll_type;
  _roll_type roll;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef float _rudder_type;
  _rudder_type rudder;

   typedef float _throttle_type;
  _throttle_type throttle;




  typedef boost::shared_ptr< ::minnow::Boat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::minnow::Boat_<ContainerAllocator> const> ConstPtr;

}; // struct Boat_

typedef ::minnow::Boat_<std::allocator<void> > Boat;

typedef boost::shared_ptr< ::minnow::Boat > BoatPtr;
typedef boost::shared_ptr< ::minnow::Boat const> BoatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::minnow::Boat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::minnow::Boat_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace minnow

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'minnow': ['/home/monica/panda_work/src/minnow/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::minnow::Boat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::minnow::Boat_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::minnow::Boat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::minnow::Boat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::minnow::Boat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::minnow::Boat_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::minnow::Boat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff5f9e37db99f0622bdc48fcf460b063";
  }

  static const char* value(const ::minnow::Boat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff5f9e37db99f062ULL;
  static const uint64_t static_value2 = 0x2bdc48fcf460b063ULL;
};

template<class ContainerAllocator>
struct DataType< ::minnow::Boat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "minnow/Boat";
  }

  static const char* value(const ::minnow::Boat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::minnow::Boat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int32 status\n\
float32 pitch\n\
float32 roll\n\
float32 yaw\n\
float32 rudder\n\
float32 throttle\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::minnow::Boat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::minnow::Boat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.pitch);
      stream.next(m.roll);
      stream.next(m.yaw);
      stream.next(m.rudder);
      stream.next(m.throttle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Boat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::minnow::Boat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::minnow::Boat_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "pitch: ";
    Printer<float>::stream(s, indent + "  ", v.pitch);
    s << indent << "roll: ";
    Printer<float>::stream(s, indent + "  ", v.roll);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "rudder: ";
    Printer<float>::stream(s, indent + "  ", v.rudder);
    s << indent << "throttle: ";
    Printer<float>::stream(s, indent + "  ", v.throttle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MINNOW_MESSAGE_BOAT_H