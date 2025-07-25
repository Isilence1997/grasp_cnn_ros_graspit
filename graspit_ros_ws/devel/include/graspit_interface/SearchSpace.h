// Generated by gencpp from file graspit_interface/SearchSpace.msg
// DO NOT EDIT!


#ifndef GRASPIT_INTERFACE_MESSAGE_SEARCHSPACE_H
#define GRASPIT_INTERFACE_MESSAGE_SEARCHSPACE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace graspit_interface
{
template <class ContainerAllocator>
struct SearchSpace_
{
  typedef SearchSpace_<ContainerAllocator> Type;

  SearchSpace_()
    : type(0)  {
    }
  SearchSpace_(const ContainerAllocator& _alloc)
    : type(0)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;



  enum {
    SPACE_AXIS_ANGLE = 0u,
    SPACE_COMPLETE = 1u,
    SPACE_ELLIPSOID = 2u,
    SPACE_APPROACH = 3u,
  };


  typedef boost::shared_ptr< ::graspit_interface::SearchSpace_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_interface::SearchSpace_<ContainerAllocator> const> ConstPtr;

}; // struct SearchSpace_

typedef ::graspit_interface::SearchSpace_<std::allocator<void> > SearchSpace;

typedef boost::shared_ptr< ::graspit_interface::SearchSpace > SearchSpacePtr;
typedef boost::shared_ptr< ::graspit_interface::SearchSpace const> SearchSpaceConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_interface::SearchSpace_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_interface::SearchSpace_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graspit_interface

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'graspit_interface': ['/home/hhy/graspit_ros_ws/src/graspit_interface/msg', '/home/hhy/graspit_ros_ws/devel/share/graspit_interface/msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::SearchSpace_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::SearchSpace_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::SearchSpace_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::SearchSpace_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::SearchSpace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::SearchSpace_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_interface::SearchSpace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "686bd04c0c6bbe368a7da1ef3742f2d9";
  }

  static const char* value(const ::graspit_interface::SearchSpace_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x686bd04c0c6bbe36ULL;
  static const uint64_t static_value2 = 0x8a7da1ef3742f2d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_interface::SearchSpace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_interface/SearchSpace";
  }

  static const char* value(const ::graspit_interface::SearchSpace_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_interface::SearchSpace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 SPACE_AXIS_ANGLE    = 0\n\
uint8 SPACE_COMPLETE      = 1\n\
uint8 SPACE_ELLIPSOID     = 2\n\
uint8 SPACE_APPROACH      = 3\n\
\n\
uint8 type\n\
";
  }

  static const char* value(const ::graspit_interface::SearchSpace_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_interface::SearchSpace_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SearchSpace_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_interface::SearchSpace_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_interface::SearchSpace_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_INTERFACE_MESSAGE_SEARCHSPACE_H
