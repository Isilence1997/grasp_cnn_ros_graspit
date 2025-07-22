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

class ComputeEnergyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handId = null;
      this.graspableBodyId = null;
      this.energyType = null;
    }
    else {
      if (initObj.hasOwnProperty('handId')) {
        this.handId = initObj.handId
      }
      else {
        this.handId = 0;
      }
      if (initObj.hasOwnProperty('graspableBodyId')) {
        this.graspableBodyId = initObj.graspableBodyId
      }
      else {
        this.graspableBodyId = 0;
      }
      if (initObj.hasOwnProperty('energyType')) {
        this.energyType = initObj.energyType
      }
      else {
        this.energyType = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeEnergyRequest
    // Serialize message field [handId]
    bufferOffset = _serializer.uint32(obj.handId, buffer, bufferOffset);
    // Serialize message field [graspableBodyId]
    bufferOffset = _serializer.uint32(obj.graspableBodyId, buffer, bufferOffset);
    // Serialize message field [energyType]
    bufferOffset = _serializer.string(obj.energyType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeEnergyRequest
    let len;
    let data = new ComputeEnergyRequest(null);
    // Deserialize message field [handId]
    data.handId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [graspableBodyId]
    data.graspableBodyId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [energyType]
    data.energyType = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.energyType.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ComputeEnergyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb46c20ab640f48b80f1b964f23ef424';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 handId
    uint32 graspableBodyId
    string energyType
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeEnergyRequest(null);
    if (msg.handId !== undefined) {
      resolved.handId = msg.handId;
    }
    else {
      resolved.handId = 0
    }

    if (msg.graspableBodyId !== undefined) {
      resolved.graspableBodyId = msg.graspableBodyId;
    }
    else {
      resolved.graspableBodyId = 0
    }

    if (msg.energyType !== undefined) {
      resolved.energyType = msg.energyType;
    }
    else {
      resolved.energyType = ''
    }

    return resolved;
    }
};

class ComputeEnergyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.energy = null;
      this.isLegal = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('energy')) {
        this.energy = initObj.energy
      }
      else {
        this.energy = 0.0;
      }
      if (initObj.hasOwnProperty('isLegal')) {
        this.isLegal = initObj.isLegal
      }
      else {
        this.isLegal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeEnergyResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    // Serialize message field [energy]
    bufferOffset = _serializer.float64(obj.energy, buffer, bufferOffset);
    // Serialize message field [isLegal]
    bufferOffset = _serializer.bool(obj.isLegal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeEnergyResponse
    let len;
    let data = new ComputeEnergyResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [energy]
    data.energy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [isLegal]
    data.isLegal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspit_interface/ComputeEnergyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c46ac3241ac31892d8f1979f6ace57b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESULT_SUCCESS    = 0
    uint8 RESULT_INVALID_HAND_ID = 1
    uint8 RESULT_INVALID_BODY_ID  = 2
    uint8 RESULT_INVALID_ENERGY_TYPE = 3
    
    uint8 result
    
    float64 energy
    bool isLegal
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeEnergyResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.energy !== undefined) {
      resolved.energy = msg.energy;
    }
    else {
      resolved.energy = 0.0
    }

    if (msg.isLegal !== undefined) {
      resolved.isLegal = msg.isLegal;
    }
    else {
      resolved.isLegal = false
    }

    return resolved;
    }
};

// Constants for message
ComputeEnergyResponse.Constants = {
  RESULT_SUCCESS: 0,
  RESULT_INVALID_HAND_ID: 1,
  RESULT_INVALID_BODY_ID: 2,
  RESULT_INVALID_ENERGY_TYPE: 3,
}

module.exports = {
  Request: ComputeEnergyRequest,
  Response: ComputeEnergyResponse,
  md5sum() { return 'dfcebf964a22ec5ff63ce7a982066d70'; },
  datatype() { return 'graspit_interface/ComputeEnergy'; }
};
