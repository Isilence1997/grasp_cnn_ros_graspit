// Auto-generated. Do not edit!

// (in-package graspit_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TactileSensorData = require('./TactileSensorData.js');
let Contact = require('./Contact.js');
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Robot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.joints = null;
      this.dofs = null;
      this.tactile = null;
      this.contacts = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('dofs')) {
        this.dofs = initObj.dofs
      }
      else {
        this.dofs = [];
      }
      if (initObj.hasOwnProperty('tactile')) {
        this.tactile = initObj.tactile
      }
      else {
        this.tactile = new TactileSensorData();
      }
      if (initObj.hasOwnProperty('contacts')) {
        this.contacts = initObj.contacts
      }
      else {
        this.contacts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Robot
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [joints]
    // Serialize the length for message field [joints]
    bufferOffset = _serializer.uint32(obj.joints.length, buffer, bufferOffset);
    obj.joints.forEach((val) => {
      bufferOffset = sensor_msgs.msg.JointState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dofs]
    bufferOffset = _arraySerializer.float64(obj.dofs, buffer, bufferOffset, null);
    // Serialize message field [tactile]
    bufferOffset = TactileSensorData.serialize(obj.tactile, buffer, bufferOffset);
    // Serialize message field [contacts]
    // Serialize the length for message field [contacts]
    bufferOffset = _serializer.uint32(obj.contacts.length, buffer, bufferOffset);
    obj.contacts.forEach((val) => {
      bufferOffset = Contact.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Robot
    let len;
    let data = new Robot(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [joints]
    // Deserialize array length for message field [joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints[i] = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dofs]
    data.dofs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tactile]
    data.tactile = TactileSensorData.deserialize(buffer, bufferOffset);
    // Deserialize message field [contacts]
    // Deserialize array length for message field [contacts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contacts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contacts[i] = Contact.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.joints.forEach((val) => {
      length += sensor_msgs.msg.JointState.getMessageSize(val);
    });
    length += 8 * object.dofs.length;
    length += TactileSensorData.getMessageSize(object.tactile);
    object.contacts.forEach((val) => {
      length += Contact.getMessageSize(val);
    });
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/Robot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8fc916d3ea3bbc018587674c7ea5832';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    geometry_msgs/Pose pose
    sensor_msgs/JointState[] joints
    float64[] dofs
    graspit_interface/TactileSensorData tactile
    Contact[] contacts
    
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
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    ================================================================================
    MSG: graspit_interface/TactileSensorData
    std_msgs/Header header
    geometry_msgs/PoseStamped[] sensor_poses
    float64[] sensor_forces
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: graspit_interface/Contact
    string body1
    string body2
    
    geometry_msgs/PoseStamped ps # in the graspit world frame
    
    float64 cof # coefficient of friction.
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Robot(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.joints !== undefined) {
      resolved.joints = new Array(msg.joints.length);
      for (let i = 0; i < resolved.joints.length; ++i) {
        resolved.joints[i] = sensor_msgs.msg.JointState.Resolve(msg.joints[i]);
      }
    }
    else {
      resolved.joints = []
    }

    if (msg.dofs !== undefined) {
      resolved.dofs = msg.dofs;
    }
    else {
      resolved.dofs = []
    }

    if (msg.tactile !== undefined) {
      resolved.tactile = TactileSensorData.Resolve(msg.tactile)
    }
    else {
      resolved.tactile = new TactileSensorData()
    }

    if (msg.contacts !== undefined) {
      resolved.contacts = new Array(msg.contacts.length);
      for (let i = 0; i < resolved.contacts.length; ++i) {
        resolved.contacts[i] = Contact.Resolve(msg.contacts[i]);
      }
    }
    else {
      resolved.contacts = []
    }

    return resolved;
    }
};

module.exports = Robot;
