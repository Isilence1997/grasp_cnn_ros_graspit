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

class FindInitialContactRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.moveDist = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('moveDist')) {
        this.moveDist = initObj.moveDist
      }
      else {
        this.moveDist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindInitialContactRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [moveDist]
    bufferOffset = _serializer.float64(obj.moveDist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindInitialContactRequest
    let len;
    let data = new FindInitialContactRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [moveDist]
    data.moveDist = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/FindInitialContactRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbd1778788d31c656988ba49365c942d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    float64 moveDist
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindInitialContactRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.moveDist !== undefined) {
      resolved.moveDist = msg.moveDist;
    }
    else {
      resolved.moveDist = 0.0
    }

    return resolved;
    }
};

class FindInitialContactResponse {
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
    // Serializes a message object of type FindInitialContactResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindInitialContactResponse
    let len;
    let data = new FindInitialContactResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/FindInitialContactResponse';
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
    const resolved = new FindInitialContactResponse(null);
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
FindInitialContactResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
}

module.exports = {
  Request: FindInitialContactRequest,
  Response: FindInitialContactResponse,
  md5sum() { return 'fdb119775186f8935d45786efba6c6a8'; },
  datatype() { return 'graspit_interface/FindInitialContact'; }
};
