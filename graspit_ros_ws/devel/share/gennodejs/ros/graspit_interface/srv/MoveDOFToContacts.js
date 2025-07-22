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

class MoveDOFToContactsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.dofs = null;
      this.desired_steps = null;
      this.stopAtContact = null;
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
      if (initObj.hasOwnProperty('desired_steps')) {
        this.desired_steps = initObj.desired_steps
      }
      else {
        this.desired_steps = [];
      }
      if (initObj.hasOwnProperty('stopAtContact')) {
        this.stopAtContact = initObj.stopAtContact
      }
      else {
        this.stopAtContact = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveDOFToContactsRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [dofs]
    bufferOffset = _arraySerializer.float64(obj.dofs, buffer, bufferOffset, null);
    // Serialize message field [desired_steps]
    bufferOffset = _arraySerializer.float64(obj.desired_steps, buffer, bufferOffset, null);
    // Serialize message field [stopAtContact]
    bufferOffset = _serializer.bool(obj.stopAtContact, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveDOFToContactsRequest
    let len;
    let data = new MoveDOFToContactsRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dofs]
    data.dofs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [desired_steps]
    data.desired_steps = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [stopAtContact]
    data.stopAtContact = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.dofs.length;
    length += 8 * object.desired_steps.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/MoveDOFToContactsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90a2bae5e7d3766f6dd04069adf108c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    float64[] dofs
    float64[] desired_steps
    bool stopAtContact
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveDOFToContactsRequest(null);
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

    if (msg.desired_steps !== undefined) {
      resolved.desired_steps = msg.desired_steps;
    }
    else {
      resolved.desired_steps = []
    }

    if (msg.stopAtContact !== undefined) {
      resolved.stopAtContact = msg.stopAtContact;
    }
    else {
      resolved.stopAtContact = false
    }

    return resolved;
    }
};

class MoveDOFToContactsResponse {
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
    // Serializes a message object of type MoveDOFToContactsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveDOFToContactsResponse
    let len;
    let data = new MoveDOFToContactsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/MoveDOFToContactsResponse';
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
    const resolved = new MoveDOFToContactsResponse(null);
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
MoveDOFToContactsResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
  RESULT_DOF_OUT_OF_RANGE: 2,
  RESULT_DOF_COUNT_MISMATCH: 3,
  RESULT_DYNAMICS_MODE_ENABLED: 4,
}

module.exports = {
  Request: MoveDOFToContactsRequest,
  Response: MoveDOFToContactsResponse,
  md5sum() { return '563bb3b4c2532e0267eb65a3fae5aad5'; },
  datatype() { return 'graspit_interface/MoveDOFToContacts'; }
};
