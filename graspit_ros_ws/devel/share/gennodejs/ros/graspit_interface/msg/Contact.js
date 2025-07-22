// Auto-generated. Do not edit!

// (in-package graspit_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Contact {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.body1 = null;
      this.body2 = null;
      this.ps = null;
      this.cof = null;
    }
    else {
      if (initObj.hasOwnProperty('body1')) {
        this.body1 = initObj.body1
      }
      else {
        this.body1 = '';
      }
      if (initObj.hasOwnProperty('body2')) {
        this.body2 = initObj.body2
      }
      else {
        this.body2 = '';
      }
      if (initObj.hasOwnProperty('ps')) {
        this.ps = initObj.ps
      }
      else {
        this.ps = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('cof')) {
        this.cof = initObj.cof
      }
      else {
        this.cof = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Contact
    // Serialize message field [body1]
    bufferOffset = _serializer.string(obj.body1, buffer, bufferOffset);
    // Serialize message field [body2]
    bufferOffset = _serializer.string(obj.body2, buffer, bufferOffset);
    // Serialize message field [ps]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.ps, buffer, bufferOffset);
    // Serialize message field [cof]
    bufferOffset = _serializer.float64(obj.cof, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Contact
    let len;
    let data = new Contact(null);
    // Deserialize message field [body1]
    data.body1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [body2]
    data.body2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ps]
    data.ps = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [cof]
    data.cof = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.body1.length;
    length += object.body2.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.ps);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/Contact';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acebe41357a08b9e018a7979651ec443';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string body1
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Contact(null);
    if (msg.body1 !== undefined) {
      resolved.body1 = msg.body1;
    }
    else {
      resolved.body1 = ''
    }

    if (msg.body2 !== undefined) {
      resolved.body2 = msg.body2;
    }
    else {
      resolved.body2 = ''
    }

    if (msg.ps !== undefined) {
      resolved.ps = geometry_msgs.msg.PoseStamped.Resolve(msg.ps)
    }
    else {
      resolved.ps = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.cof !== undefined) {
      resolved.cof = msg.cof;
    }
    else {
      resolved.cof = 0.0
    }

    return resolved;
    }
};

module.exports = Contact;
