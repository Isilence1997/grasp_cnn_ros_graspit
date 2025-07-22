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

class ToggleAllCollisionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableCollisions = null;
    }
    else {
      if (initObj.hasOwnProperty('enableCollisions')) {
        this.enableCollisions = initObj.enableCollisions
      }
      else {
        this.enableCollisions = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToggleAllCollisionsRequest
    // Serialize message field [enableCollisions]
    bufferOffset = _serializer.bool(obj.enableCollisions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToggleAllCollisionsRequest
    let len;
    let data = new ToggleAllCollisionsRequest(null);
    // Deserialize message field [enableCollisions]
    data.enableCollisions = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ToggleAllCollisionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c8e2540904142e4bddf9c31767c9e80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enableCollisions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToggleAllCollisionsRequest(null);
    if (msg.enableCollisions !== undefined) {
      resolved.enableCollisions = msg.enableCollisions;
    }
    else {
      resolved.enableCollisions = false
    }

    return resolved;
    }
};

class ToggleAllCollisionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToggleAllCollisionsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToggleAllCollisionsResponse
    let len;
    let data = new ToggleAllCollisionsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ToggleAllCollisionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToggleAllCollisionsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ToggleAllCollisionsRequest,
  Response: ToggleAllCollisionsResponse,
  md5sum() { return '9c8e2540904142e4bddf9c31767c9e80'; },
  datatype() { return 'graspit_interface/ToggleAllCollisions'; }
};
