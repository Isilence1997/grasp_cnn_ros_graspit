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

class SetDynamicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableDynamics = null;
    }
    else {
      if (initObj.hasOwnProperty('enableDynamics')) {
        this.enableDynamics = initObj.enableDynamics
      }
      else {
        this.enableDynamics = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDynamicsRequest
    // Serialize message field [enableDynamics]
    bufferOffset = _serializer.bool(obj.enableDynamics, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDynamicsRequest
    let len;
    let data = new SetDynamicsRequest(null);
    // Deserialize message field [enableDynamics]
    data.enableDynamics = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/SetDynamicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd90fb715fe24e5e2d9259a52a4ce515';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enableDynamics
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDynamicsRequest(null);
    if (msg.enableDynamics !== undefined) {
      resolved.enableDynamics = msg.enableDynamics;
    }
    else {
      resolved.enableDynamics = false
    }

    return resolved;
    }
};

class SetDynamicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDynamicsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDynamicsResponse
    let len;
    let data = new SetDynamicsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/SetDynamicsResponse';
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
    const resolved = new SetDynamicsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetDynamicsRequest,
  Response: SetDynamicsResponse,
  md5sum() { return 'fd90fb715fe24e5e2d9259a52a4ce515'; },
  datatype() { return 'graspit_interface/SetDynamics'; }
};
