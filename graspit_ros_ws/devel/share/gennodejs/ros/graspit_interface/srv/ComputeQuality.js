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

class ComputeQualityRequest {
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
    // Serializes a message object of type ComputeQualityRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeQualityRequest
    let len;
    let data = new ComputeQualityRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ComputeQualityRequest';
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
    const resolved = new ComputeQualityRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class ComputeQualityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.volume = null;
      this.epsilon = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('volume')) {
        this.volume = initObj.volume
      }
      else {
        this.volume = 0.0;
      }
      if (initObj.hasOwnProperty('epsilon')) {
        this.epsilon = initObj.epsilon
      }
      else {
        this.epsilon = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeQualityResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    // Serialize message field [volume]
    bufferOffset = _serializer.float64(obj.volume, buffer, bufferOffset);
    // Serialize message field [epsilon]
    bufferOffset = _serializer.float64(obj.epsilon, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeQualityResponse
    let len;
    let data = new ComputeQualityResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [volume]
    data.volume = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [epsilon]
    data.epsilon = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ComputeQualityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a174f632c6427274a6d20c7e1b08902f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESULT_SUCCESS    = 0
    uint8 RESULT_INVALID_ID = 1
    uint8 RESULT_COLLISION  = 2
    
    uint8 result
    
    float64 volume
    float64 epsilon
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeQualityResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.volume !== undefined) {
      resolved.volume = msg.volume;
    }
    else {
      resolved.volume = 0.0
    }

    if (msg.epsilon !== undefined) {
      resolved.epsilon = msg.epsilon;
    }
    else {
      resolved.epsilon = 0.0
    }

    return resolved;
    }
};

// Constants for message
ComputeQualityResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
  RESULT_COLLISION: 2,
}

module.exports = {
  Request: ComputeQualityRequest,
  Response: ComputeQualityResponse,
  md5sum() { return '3ac746f2f68fcf449fe5d3aa24815bd3'; },
  datatype() { return 'graspit_interface/ComputeQuality'; }
};
