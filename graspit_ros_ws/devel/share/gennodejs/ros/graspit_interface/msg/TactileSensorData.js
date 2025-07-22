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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TactileSensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_poses = null;
      this.sensor_forces = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor_poses')) {
        this.sensor_poses = initObj.sensor_poses
      }
      else {
        this.sensor_poses = [];
      }
      if (initObj.hasOwnProperty('sensor_forces')) {
        this.sensor_forces = initObj.sensor_forces
      }
      else {
        this.sensor_forces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TactileSensorData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_poses]
    // Serialize the length for message field [sensor_poses]
    bufferOffset = _serializer.uint32(obj.sensor_poses.length, buffer, bufferOffset);
    obj.sensor_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sensor_forces]
    bufferOffset = _arraySerializer.float64(obj.sensor_forces, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TactileSensorData
    let len;
    let data = new TactileSensorData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_poses]
    // Deserialize array length for message field [sensor_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sensor_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensor_poses[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sensor_forces]
    data.sensor_forces = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.sensor_poses.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    length += 8 * object.sensor_forces.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/TactileSensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8b9e263562c22cdc89622a214c2dd89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/PoseStamped[] sensor_poses
    float64[] sensor_forces
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new TactileSensorData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor_poses !== undefined) {
      resolved.sensor_poses = new Array(msg.sensor_poses.length);
      for (let i = 0; i < resolved.sensor_poses.length; ++i) {
        resolved.sensor_poses[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.sensor_poses[i]);
      }
    }
    else {
      resolved.sensor_poses = []
    }

    if (msg.sensor_forces !== undefined) {
      resolved.sensor_forces = msg.sensor_forces;
    }
    else {
      resolved.sensor_forces = []
    }

    return resolved;
    }
};

module.exports = TactileSensorData;
