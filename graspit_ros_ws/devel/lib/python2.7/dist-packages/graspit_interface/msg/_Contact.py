# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from graspit_interface/Contact.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class Contact(genpy.Message):
  _md5sum = "acebe41357a08b9e018a7979651ec443"
  _type = "graspit_interface/Contact"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string body1
string body2

geometry_msgs/PoseStamped ps # in the graspit world frame

float64 cof # coefficient of friction.



================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['body1','body2','ps','cof']
  _slot_types = ['string','string','geometry_msgs/PoseStamped','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       body1,body2,ps,cof

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Contact, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.body1 is None:
        self.body1 = ''
      if self.body2 is None:
        self.body2 = ''
      if self.ps is None:
        self.ps = geometry_msgs.msg.PoseStamped()
      if self.cof is None:
        self.cof = 0.
    else:
      self.body1 = ''
      self.body2 = ''
      self.ps = geometry_msgs.msg.PoseStamped()
      self.cof = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.body1
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.body2
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.ps.header.seq, _x.ps.header.stamp.secs, _x.ps.header.stamp.nsecs))
      _x = self.ps.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.ps.pose.position.x, _x.ps.pose.position.y, _x.ps.pose.position.z, _x.ps.pose.orientation.x, _x.ps.pose.orientation.y, _x.ps.pose.orientation.z, _x.ps.pose.orientation.w, _x.cof))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ps is None:
        self.ps = geometry_msgs.msg.PoseStamped()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.body1 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.body1 = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.body2 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.body2 = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.ps.header.seq, _x.ps.header.stamp.secs, _x.ps.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ps.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ps.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.ps.pose.position.x, _x.ps.pose.position.y, _x.ps.pose.position.z, _x.ps.pose.orientation.x, _x.ps.pose.orientation.y, _x.ps.pose.orientation.z, _x.ps.pose.orientation.w, _x.cof,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.body1
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.body2
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.ps.header.seq, _x.ps.header.stamp.secs, _x.ps.header.stamp.nsecs))
      _x = self.ps.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.ps.pose.position.x, _x.ps.pose.position.y, _x.ps.pose.position.z, _x.ps.pose.orientation.x, _x.ps.pose.orientation.y, _x.ps.pose.orientation.z, _x.ps.pose.orientation.w, _x.cof))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ps is None:
        self.ps = geometry_msgs.msg.PoseStamped()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.body1 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.body1 = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.body2 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.body2 = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.ps.header.seq, _x.ps.header.stamp.secs, _x.ps.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ps.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ps.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.ps.pose.position.x, _x.ps.pose.position.y, _x.ps.pose.position.z, _x.ps.pose.orientation.x, _x.ps.pose.orientation.y, _x.ps.pose.orientation.z, _x.ps.pose.orientation.w, _x.cof,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
