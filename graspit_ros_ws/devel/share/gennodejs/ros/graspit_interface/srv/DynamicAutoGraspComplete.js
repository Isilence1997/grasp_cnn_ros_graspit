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

class DynamicAutoGraspCompleteRequest {
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
    // Serializes a message object of type DynamicAutoGraspCompleteRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicAutoGraspCompleteRequest
    let len;
    let data = new DynamicAutoGraspCompleteRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/DynamicAutoGraspCompleteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '309d4b30834b338cced19e5622a97a03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicAutoGraspCompleteRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class DynamicAutoGraspCompleteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.GraspComplete = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('GraspComplete')) {
        this.GraspComplete = initObj.GraspComplete
      }
      else {
        this.GraspComplete = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicAutoGraspCompleteResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    // Serialize message field [GraspComplete]
    bufferOffset = _serializer.bool(obj.GraspComplete, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicAutoGraspCompleteResponse
    let len;
    let data = new DynamicAutoGraspCompleteResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [GraspComplete]
    data.GraspComplete = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/DynamicAutoGraspCompleteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58fde6c8eb80dd50391159186cb7057f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESULT_SUCCESS    = 0
    uint8 RESULT_INVALID_ID = 1
    
    uint8 result
    
    bool GraspComplete
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicAutoGraspCompleteResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.GraspComplete !== undefined) {
      resolved.GraspComplete = msg.GraspComplete;
    }
    else {
      resolved.GraspComplete = false
    }

    return resolved;
    }
};

// Constants for message
DynamicAutoGraspCompleteResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
}

module.exports = {
  Request: DynamicAutoGraspCompleteRequest,
  Response: DynamicAutoGraspCompleteResponse,
  md5sum() { return '3b4169fde884df82dd4cd2e7af7cbd44'; },
  datatype() { return 'graspit_interface/DynamicAutoGraspComplete'; }
};
