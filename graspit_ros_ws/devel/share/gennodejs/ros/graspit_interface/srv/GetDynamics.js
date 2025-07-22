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

class GetDynamicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDynamicsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDynamicsRequest
    let len;
    let data = new GetDynamicsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/GetDynamicsRequest';
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
    const resolved = new GetDynamicsRequest(null);
    return resolved;
    }
};

class GetDynamicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dynamicsEnabled = null;
    }
    else {
      if (initObj.hasOwnProperty('dynamicsEnabled')) {
        this.dynamicsEnabled = initObj.dynamicsEnabled
      }
      else {
        this.dynamicsEnabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDynamicsResponse
    // Serialize message field [dynamicsEnabled]
    bufferOffset = _serializer.bool(obj.dynamicsEnabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDynamicsResponse
    let len;
    let data = new GetDynamicsResponse(null);
    // Deserialize message field [dynamicsEnabled]
    data.dynamicsEnabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/GetDynamicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6fee31102eceebe1746ef7051cbdb2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool dynamicsEnabled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDynamicsResponse(null);
    if (msg.dynamicsEnabled !== undefined) {
      resolved.dynamicsEnabled = msg.dynamicsEnabled;
    }
    else {
      resolved.dynamicsEnabled = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDynamicsRequest,
  Response: GetDynamicsResponse,
  md5sum() { return 'd6fee31102eceebe1746ef7051cbdb2f'; },
  datatype() { return 'graspit_interface/GetDynamics'; }
};
