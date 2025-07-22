// Auto-generated. Do not edit!

// (in-package graspit_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Energy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.energy = null;
      this.energy_type = null;
    }
    else {
      if (initObj.hasOwnProperty('energy')) {
        this.energy = initObj.energy
      }
      else {
        this.energy = 0.0;
      }
      if (initObj.hasOwnProperty('energy_type')) {
        this.energy_type = initObj.energy_type
      }
      else {
        this.energy_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Energy
    // Serialize message field [energy]
    bufferOffset = _serializer.float64(obj.energy, buffer, bufferOffset);
    // Serialize message field [energy_type]
    bufferOffset = _serializer.uint8(obj.energy_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Energy
    let len;
    let data = new Energy(null);
    // Deserialize message field [energy]
    data.energy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [energy_type]
    data.energy_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/Energy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b02fc5d9e41e0b8406a4fd73ca0a93db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 energy
    uint8 energy_type
    
    uint8 ENERGY_VOLUME = 0
    uint8 ENERGY_EPSILON = 1
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Energy(null);
    if (msg.energy !== undefined) {
      resolved.energy = msg.energy;
    }
    else {
      resolved.energy = 0.0
    }

    if (msg.energy_type !== undefined) {
      resolved.energy_type = msg.energy_type;
    }
    else {
      resolved.energy_type = 0
    }

    return resolved;
    }
};

// Constants for message
Energy.Constants = {
  ENERGY_VOLUME: 0,
  ENERGY_EPSILON: 1,
}

module.exports = Energy;
