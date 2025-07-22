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

class Grasp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.graspable_body_id = null;
      this.pose = null;
      this.dofs = null;
      this.epsilon_quality = null;
      this.volume_quality = null;
      this.approach_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('graspable_body_id')) {
        this.graspable_body_id = initObj.graspable_body_id
      }
      else {
        this.graspable_body_id = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('dofs')) {
        this.dofs = initObj.dofs
      }
      else {
        this.dofs = [];
      }
      if (initObj.hasOwnProperty('epsilon_quality')) {
        this.epsilon_quality = initObj.epsilon_quality
      }
      else {
        this.epsilon_quality = 0.0;
      }
      if (initObj.hasOwnProperty('volume_quality')) {
        this.volume_quality = initObj.volume_quality
      }
      else {
        this.volume_quality = 0.0;
      }
      if (initObj.hasOwnProperty('approach_direction')) {
        this.approach_direction = initObj.approach_direction
      }
      else {
        this.approach_direction = new geometry_msgs.msg.Vector3Stamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Grasp
    // Serialize message field [graspable_body_id]
    bufferOffset = _serializer.int32(obj.graspable_body_id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [dofs]
    bufferOffset = _arraySerializer.float64(obj.dofs, buffer, bufferOffset, null);
    // Serialize message field [epsilon_quality]
    bufferOffset = _serializer.float64(obj.epsilon_quality, buffer, bufferOffset);
    // Serialize message field [volume_quality]
    bufferOffset = _serializer.float64(obj.volume_quality, buffer, bufferOffset);
    // Serialize message field [approach_direction]
    bufferOffset = geometry_msgs.msg.Vector3Stamped.serialize(obj.approach_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Grasp
    let len;
    let data = new Grasp(null);
    // Deserialize message field [graspable_body_id]
    data.graspable_body_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [dofs]
    data.dofs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [epsilon_quality]
    data.epsilon_quality = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [volume_quality]
    data.volume_quality = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [approach_direction]
    data.approach_direction = geometry_msgs.msg.Vector3Stamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.dofs.length;
    length += geometry_msgs.msg.Vector3Stamped.getMessageSize(object.approach_direction);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/Grasp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd74168be3b3320990979febf7f5265d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # id for the body the grasp was planned on.
    int32 graspable_body_id
    
    # pose of the hand with respect to the object 
    # the grasp was planned on
    geometry_msgs/Pose pose
    
    float64[] dofs
    
    float64 epsilon_quality
    float64 volume_quality
    
    
    # The approach direction to take before picking an object
    geometry_msgs/Vector3Stamped approach_direction
    
    
    
    
    
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
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Grasp(null);
    if (msg.graspable_body_id !== undefined) {
      resolved.graspable_body_id = msg.graspable_body_id;
    }
    else {
      resolved.graspable_body_id = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.dofs !== undefined) {
      resolved.dofs = msg.dofs;
    }
    else {
      resolved.dofs = []
    }

    if (msg.epsilon_quality !== undefined) {
      resolved.epsilon_quality = msg.epsilon_quality;
    }
    else {
      resolved.epsilon_quality = 0.0
    }

    if (msg.volume_quality !== undefined) {
      resolved.volume_quality = msg.volume_quality;
    }
    else {
      resolved.volume_quality = 0.0
    }

    if (msg.approach_direction !== undefined) {
      resolved.approach_direction = geometry_msgs.msg.Vector3Stamped.Resolve(msg.approach_direction)
    }
    else {
      resolved.approach_direction = new geometry_msgs.msg.Vector3Stamped()
    }

    return resolved;
    }
};

module.exports = Grasp;
