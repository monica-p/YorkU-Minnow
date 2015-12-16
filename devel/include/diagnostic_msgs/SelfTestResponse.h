// Generated by gencpp from file diagnostic_msgs/SelfTestResponse.msg
// DO NOT EDIT!


#ifndef DIAGNOSTIC_MSGS_MESSAGE_SELFTESTRESPONSE_H
#define DIAGNOSTIC_MSGS_MESSAGE_SELFTESTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <diagnostic_msgs/DiagnosticStatus.h>

namespace diagnostic_msgs
{
template <class ContainerAllocator>
struct SelfTestResponse_
{
  typedef SelfTestResponse_<ContainerAllocator> Type;

  SelfTestResponse_()
    : id()
    , passed(0)
    , status()  {
    }
  SelfTestResponse_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , passed(0)
    , status(_alloc)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef int8_t _passed_type;
  _passed_type passed;

   typedef std::vector< ::diagnostic_msgs::DiagnosticStatus_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::diagnostic_msgs::DiagnosticStatus_<ContainerAllocator> >::other >  _status_type;
  _status_type status;




  typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SelfTestResponse_

typedef ::diagnostic_msgs::SelfTestResponse_<std::allocator<void> > SelfTestResponse;

typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestResponse > SelfTestResponsePtr;
typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestResponse const> SelfTestResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace diagnostic_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'diagnostic_msgs': ['/home/monica/panda_work/src/common_msgs/diagnostic_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ac21b1bab7ab17546986536c22eb34e9";
  }

  static const char* value(const ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xac21b1bab7ab1754ULL;
  static const uint64_t static_value2 = 0x6986536c22eb34e9ULL;
};

template<class ContainerAllocator>
struct DataType< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "diagnostic_msgs/SelfTestResponse";
  }

  static const char* value(const ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n\
byte passed\n\
DiagnosticStatus[] status\n\
\n\
\n\
================================================================================\n\
MSG: diagnostic_msgs/DiagnosticStatus\n\
# This message holds the status of an individual component of the robot.\n\
# \n\
\n\
# Possible levels of operations\n\
byte OK=0\n\
byte WARN=1\n\
byte ERROR=2\n\
byte STALE=3\n\
\n\
byte level # level of operation enumerated above \n\
string name # a description of the test/component reporting\n\
string message # a description of the status\n\
string hardware_id # a hardware unique string\n\
KeyValue[] values # an array of values associated with the status\n\
\n\
\n\
================================================================================\n\
MSG: diagnostic_msgs/KeyValue\n\
string key # what to label this value when viewing\n\
string value # a value to track over time\n\
";
  }

  static const char* value(const ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.passed);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SelfTestResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::diagnostic_msgs::SelfTestResponse_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "passed: ";
    Printer<int8_t>::stream(s, indent + "  ", v.passed);
    s << indent << "status[]" << std::endl;
    for (size_t i = 0; i < v.status.size(); ++i)
    {
      s << indent << "  status[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::diagnostic_msgs::DiagnosticStatus_<ContainerAllocator> >::stream(s, indent + "    ", v.status[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DIAGNOSTIC_MSGS_MESSAGE_SELFTESTRESPONSE_H
