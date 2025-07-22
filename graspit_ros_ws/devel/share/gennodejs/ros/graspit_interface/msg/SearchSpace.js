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

class SearchSpace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SearchSpace
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SearchSpace
    let len;
    let data = new SearchSpace(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/SearchSpace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '686bd04c0c6bbe368a7da1ef3742f2d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SPACE_AXIS_ANGLE    = 0
    uint8 SPACE_COMPLETE      = 1
    uint8 SPACE_ELLIPSOID     = 2
    uint8 SPACE_APPROACH      = 3
    
    uint8 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SearchSpace(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
SearchSpace.Constants = {
  SPACE_AXIS_ANGLE: 0,
  SPACE_COMPLETE: 1,
  SPACE_ELLIPSOID: 2,
  SPACE_APPROACH: 3,
}

module.exports = SearchSpace;
