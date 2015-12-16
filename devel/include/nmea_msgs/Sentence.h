// Generated by gencpp from file nmea_msgs/Sentence.msg
// DO NOT EDIT!


#ifndef NMEA_MSGS_MESSAGE_SENTENCE_H
#define NMEA_MSGS_MESSAGE_SENTENCE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace nmea_msgs
{
template <class ContainerAllocator>
struct Sentence_
{
  typedef Sentence_<ContainerAllocator> Type;

  Sentence_()
    : header()
    , sentence()  {
    }
  Sentence_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sentence(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _sentence_type;
  _sentence_type sentence;




  typedef boost::shared_ptr< ::nmea_msgs::Sentence_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nmea_msgs::Sentence_<ContainerAllocator> const> ConstPtr;

}; // struct Sentence_

typedef ::nmea_msgs::Sentence_<std::allocator<void> > Sentence;

typedef boost::shared_ptr< ::nmea_msgs::Sentence > SentencePtr;
typedef boost::shared_ptr< ::nmea_msgs::Sentence const> SentenceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nmea_msgs::Sentence_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nmea_msgs::Sentence_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nmea_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'nmea_msgs': ['/home/monica/panda_work/src/gps_folder/nmea_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nmea_msgs::Sentence_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nmea_msgs::Sentence_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nmea_msgs::Sentence_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nmea_msgs::Sentence_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nmea_msgs::Sentence_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nmea_msgs::Sentence_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nmea_msgs::Sentence_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f221efc5f4b3bac7ce4af102b32308b";
  }

  static const char* value(const ::nmea_msgs::Sentence_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f221efc5f4b3bacULL;
  static const uint64_t static_value2 = 0x7ce4af102b32308bULL;
};

template<class ContainerAllocator>
struct DataType< ::nmea_msgs::Sentence_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nmea_msgs/Sentence";
  }

  static const char* value(const ::nmea_msgs::Sentence_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nmea_msgs::Sentence_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A message representing a single NMEA0183 sentence.\n\
\n\
# header.stamp is the ROS Time when the sentence was read.\n\
# header.frame_id is the frame of reference reported by the satellite\n\
#        receiver, usually the location of the antenna.  This is a\n\
#        Euclidean frame relative to the vehicle, not a reference\n\
#        ellipsoid.\n\
Header header\n\
\n\
# This should only contain ASCII characters in order to be a valid NMEA0183 sentence.\n\
string sentence\n\
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

  static const char* value(const ::nmea_msgs::Sentence_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nmea_msgs::Sentence_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sentence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Sentence_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nmea_msgs::Sentence_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nmea_msgs::Sentence_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sentence: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.sentence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NMEA_MSGS_MESSAGE_SENTENCE_H
