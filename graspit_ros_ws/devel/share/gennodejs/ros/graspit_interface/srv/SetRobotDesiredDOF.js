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

class SetRobotDesiredDOFRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.dofs = null;
      this.dof_velocities = null;
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
      if (initObj.hasOwnProperty('dof_velocities')) {
        this.dof_velocities = initObj.dof_velocities
      }
      else {
        this.dof_velocities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRobotDesiredDOFRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [dofs]
    bufferOffset = _arraySerializer.float64(obj.dofs, buffer, bufferOffset, null);
    // Serialize message field [dof_velocities]
    bufferOffset = _arraySerializer.float64(obj.dof_velocities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRobotDesiredDOFRequest
    let len;
    let data = new SetRobotDesiredDOFRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dofs]
    data.dofs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dof_velocities]
    data.dof_velocities = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.dofs.length;
    length += 8 * object.dof_velocities.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/SetRobotDesiredDOFRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69456a29060bcb953b1cabeb2c68b83a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    float64[] dofs
    float64[] dof_velocities
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRobotDesiredDOFRequest(null);
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

    if (msg.dof_velocities !== undefined) {
      resolved.dof_velocities = msg.dof_velocities;
    }
    else {
      resolved.dof_velocities = []
    }

    return resolved;
    }
};

class SetRobotDesiredDOFResponse {
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
    // Serializes a message object of type SetRobotDesiredDOFResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRobotDesiredDOFResponse
    let len;
    let data = new SetRobotDesiredDOFResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/SetRobotDesiredDOFResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f204b64fe1b55637af64a69fcacb31bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESULT_SUCCESS                = 0
    uint8 RESULT_INVALID_ID             = 1
    uint8 RESULT_DOF_OUT_OF_RANGE       = 2
    uint8 RESULT_DOF_COUNT_MISMATCH     = 3
    uint8 RESULT_DYNAMICS_MODE_DISABLED = 4
    
    uint8 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRobotDesiredDOFResponse(null);
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
SetRobotDesiredDOFResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_ID: 1,
  RESULT_DOF_OUT_OF_RANGE: 2,
  RESULT_DOF_COUNT_MISMATCH: 3,
  RESULT_DYNAMICS_MODE_DISABLED: 4,
}

module.exports = {
  Request: SetRobotDesiredDOFRequest,
  Response: SetRobotDesiredDOFResponse,
  md5sum() { return '9c4727cc016ebb1f76651d8e34c53cc0'; },
  datatype() { return 'graspit_interface/SetRobotDesiredDOF'; }
};
