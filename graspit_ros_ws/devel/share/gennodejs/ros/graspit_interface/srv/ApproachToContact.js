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

class ApproachToContactRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.moveDist = null;
      this.oneStep = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('moveDist')) {
        this.moveDist = initObj.moveDist
      }
      else {
        this.moveDist = 0.0;
      }
      if (initObj.hasOwnProperty('oneStep')) {
        this.oneStep = initObj.oneStep
      }
      else {
        this.oneStep = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApproachToContactRequest
    // Serialize message field [moveDist]
    bufferOffset = _serializer.float64(obj.moveDist, buffer, bufferOffset);
    // Serialize message field [oneStep]
    bufferOffset = _serializer.bool(obj.oneStep, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApproachToContactRequest
    let len;
    let data = new ApproachToContactRequest(null);
    // Deserialize message field [moveDist]
    data.moveDist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [oneStep]
    data.oneStep = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ApproachToContactRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '437cb5a9806e882a589532f86b6d8e6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 moveDist
    bool oneStep
    uint32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApproachToContactRequest(null);
    if (msg.moveDist !== undefined) {
      resolved.moveDist = msg.moveDist;
    }
    else {
      resolved.moveDist = 0.0
    }

    if (msg.oneStep !== undefined) {
      resolved.oneStep = msg.oneStep;
    }
    else {
      resolved.oneStep = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class ApproachToContactResponse {
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
    // Serializes a message object of type ApproachToContactResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApproachToContactResponse
    let len;
    let data = new ApproachToContactResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ApproachToContactResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bde7f1fdeedf761ff460f6800f89a69a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESULT_SUCCESS    = 0
    uint8 RESULT_INVALID_ID = 1
    
    uint8 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApproachToContactResponse(null);
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
ApproachToContactResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
}

module.exports = {
  Request: ApproachToContactRequest,
  Response: ApproachToContactResponse,
  md5sum() { return '8bedd9e6f36adf22b7fa2df39c3f07e2'; },
  datatype() { return 'graspit_interface/ApproachToContact'; }
};
