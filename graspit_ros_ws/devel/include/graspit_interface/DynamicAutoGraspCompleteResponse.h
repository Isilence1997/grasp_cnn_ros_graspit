// Generated by gencpp from file graspit_interface/DynamicAutoGraspCompleteResponse.msg
// DO NOT EDIT!


#ifndef GRASPIT_INTERFACE_MESSAGE_DYNAMICAUTOGRASPCOMPLETERESPONSE_H
#define GRASPIT_INTERFACE_MESSAGE_DYNAMICAUTOGRASPCOMPLETERESPONSE_H


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
struct DynamicAutoGraspCompleteResponse_
{
  typedef DynamicAutoGraspCompleteResponse_<ContainerAllocator> Type;

  DynamicAutoGraspCompleteResponse_()
    : result(0)
    , GraspComplete(false)  {
    }
  DynamicAutoGraspCompleteResponse_(const ContainerAllocator& _alloc)
    : result(0)
    , GraspComplete(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef uint8_t _GraspComplete_type;
  _GraspComplete_type GraspComplete;



  enum {
    RESULT_SUCCESS = 0u,
    RESULT_INVALID_ID = 1u,
  };


  typedef boost::shared_ptr< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DynamicAutoGraspCompleteResponse_

typedef ::graspit_interface::DynamicAutoGraspCompleteResponse_<std::allocator<void> > DynamicAutoGraspCompleteResponse;

typedef boost::shared_ptr< ::graspit_interface::DynamicAutoGraspCompleteResponse > DynamicAutoGraspCompleteResponsePtr;
typedef boost::shared_ptr< ::graspit_interface::DynamicAutoGraspCompleteResponse const> DynamicAutoGraspCompleteResponseConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58fde6c8eb80dd50391159186cb7057f";
  }

  static const char* value(const ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58fde6c8eb80dd50ULL;
  static const uint64_t static_value2 = 0x391159186cb7057fULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_interface/DynamicAutoGraspCompleteResponse";
  }

  static const char* value(const ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 RESULT_SUCCESS    = 0\n\
uint8 RESULT_INVALID_ID = 1\n\
\n\
uint8 result\n\
\n\
bool GraspComplete\n\
\n\
\n\
";
  }

  static const char* value(const ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.GraspComplete);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamicAutoGraspCompleteResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_interface::DynamicAutoGraspCompleteResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "GraspComplete: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.GraspComplete);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_INTERFACE_MESSAGE_DYNAMICAUTOGRASPCOMPLETERESPONSE_H
