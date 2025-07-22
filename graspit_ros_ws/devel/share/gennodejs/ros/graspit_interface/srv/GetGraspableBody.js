// Auto-generated. Do not edit!

// (in-package graspit_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let GraspableBody = require('../msg/GraspableBody.js');

//-----------------------------------------------------------

class GetGraspableBodyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGraspableBodyRequest
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGraspableBodyRequest
    let len;
    let data = new GetGraspableBodyRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/GetGraspableBodyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5e4a7d59c68f74eabcec876a00216aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGraspableBodyRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class GetGraspableBodyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.graspable_body = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('graspable_body')) {
        this.graspable_body = initObj.graspable_body
      }
      else {
        this.graspable_body = new GraspableBody();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGraspableBodyResponse
    // Serialize message field [graspable_body]
    bufferOffset = GraspableBody.serialize(obj.graspable_body, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGraspableBodyResponse
    let len;
    let data = new GetGraspableBodyResponse(null);
    // Deserialize message field [graspable_body]
    data.graspable_body = GraspableBody.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GraspableBody.getMessageSize(object.graspable_body);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/GetGraspableBodyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df7a656a438dfdf3e472b3d7f233108f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    GraspableBody graspable_body
    
    uint8 RESULT_SUCCESS    = 0
    uint8 RESULT_INVALID_ID = 1
    
    uint8 result
    
    
    ================================================================================
    MSG: graspit_interface/GraspableBody
    std_msgs/Header header
    
    geometry_msgs/Pose pose
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
    const resolved = new GetGraspableBodyResponse(null);
    if (msg.graspable_body !== undefined) {
      resolved.graspable_body = GraspableBody.Resolve(msg.graspable_body)
    }
    else {
      resolved.graspable_body = new GraspableBody()
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
GetGraspableBodyResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
}

module.exports = {
  Request: GetGraspableBodyRequest,
  Response: GetGraspableBodyResponse,
  md5sum() { return '218c3a98036ba7fa42afdff3e6384346'; },
  datatype() { return 'graspit_interface/GetGraspableBody'; }
};
