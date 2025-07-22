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


//-----------------------------------------------------------

class ForceRobotDOFRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.dofs = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('dofs')) {
        this.dofs = initObj.dofs
      }
      else {
        this.dofs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceRobotDOFRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [dofs]
    bufferOffset = _arraySerializer.float64(obj.dofs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceRobotDOFRequest
    let len;
    let data = new ForceRobotDOFRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dofs]
    data.dofs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.dofs.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ForceRobotDOFRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e91b96fcf9e1846de157f193c2dfb0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    float64[] dofs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceRobotDOFRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.dofs !== undefined) {
      resolved.dofs = msg.dofs;
    }
    else {
      resolved.dofs = []
    }

    return resolved;
    }
};

class ForceRobotDOFResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceRobotDOFResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceRobotDOFResponse
    let len;
    let data = new ForceRobotDOFResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ForceRobotDOFResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3208d103892120aceddee64dc0f8c8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESULT_SUCCESS               = 0
    uint8 RESULT_INVALID_ID            = 1
    uint8 RESULT_DOF_OUT_OF_RANGE      = 2
    uint8 RESULT_DOF_COUNT_MISMATCH    = 3
    uint8 RESULT_DYNAMICS_MODE_ENABLED = 4
    
    uint8 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceRobotDOFResponse(null);
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
ForceRobotDOFResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
  RESULT_DOF_OUT_OF_RANGE: 2,
  RESULT_DOF_COUNT_MISMATCH: 3,
  RESULT_DYNAMICS_MODE_ENABLED: 4,
}

module.exports = {
  Request: ForceRobotDOFRequest,
  Response: ForceRobotDOFResponse,
  md5sum() { return 'e52a3b0acd0c439a10551b619976d996'; },
  datatype() { return 'graspit_interface/ForceRobotDOF'; }
};
