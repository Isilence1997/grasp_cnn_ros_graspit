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

class SimAnnParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_custom_params = null;
      this.YC = null;
      this.HC = null;
      this.YDIMS = null;
      this.HDIMS = null;
      this.NBR_ADJ = null;
      this.ERR_ADJ = null;
      this.DEF_T0 = null;
      this.DEF_K0 = null;
    }
    else {
      if (initObj.hasOwnProperty('set_custom_params')) {
        this.set_custom_params = initObj.set_custom_params
      }
      else {
        this.set_custom_params = false;
      }
      if (initObj.hasOwnProperty('YC')) {
        this.YC = initObj.YC
      }
      else {
        this.YC = 0.0;
      }
      if (initObj.hasOwnProperty('HC')) {
        this.HC = initObj.HC
      }
      else {
        this.HC = 0.0;
      }
      if (initObj.hasOwnProperty('YDIMS')) {
        this.YDIMS = initObj.YDIMS
      }
      else {
        this.YDIMS = 0.0;
      }
      if (initObj.hasOwnProperty('HDIMS')) {
        this.HDIMS = initObj.HDIMS
      }
      else {
        this.HDIMS = 0.0;
      }
      if (initObj.hasOwnProperty('NBR_ADJ')) {
        this.NBR_ADJ = initObj.NBR_ADJ
      }
      else {
        this.NBR_ADJ = 0.0;
      }
      if (initObj.hasOwnProperty('ERR_ADJ')) {
        this.ERR_ADJ = initObj.ERR_ADJ
      }
      else {
        this.ERR_ADJ = 0.0;
      }
      if (initObj.hasOwnProperty('DEF_T0')) {
        this.DEF_T0 = initObj.DEF_T0
      }
      else {
        this.DEF_T0 = 0.0;
      }
      if (initObj.hasOwnProperty('DEF_K0')) {
        this.DEF_K0 = initObj.DEF_K0
      }
      else {
        this.DEF_K0 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimAnnParams
    // Serialize message field [set_custom_params]
    bufferOffset = _serializer.bool(obj.set_custom_params, buffer, bufferOffset);
    // Serialize message field [YC]
    bufferOffset = _serializer.float64(obj.YC, buffer, bufferOffset);
    // Serialize message field [HC]
    bufferOffset = _serializer.float64(obj.HC, buffer, bufferOffset);
    // Serialize message field [YDIMS]
    bufferOffset = _serializer.float64(obj.YDIMS, buffer, bufferOffset);
    // Serialize message field [HDIMS]
    bufferOffset = _serializer.float64(obj.HDIMS, buffer, bufferOffset);
    // Serialize message field [NBR_ADJ]
    bufferOffset = _serializer.float64(obj.NBR_ADJ, buffer, bufferOffset);
    // Serialize message field [ERR_ADJ]
    bufferOffset = _serializer.float64(obj.ERR_ADJ, buffer, bufferOffset);
    // Serialize message field [DEF_T0]
    bufferOffset = _serializer.float64(obj.DEF_T0, buffer, bufferOffset);
    // Serialize message field [DEF_K0]
    bufferOffset = _serializer.float64(obj.DEF_K0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimAnnParams
    let len;
    let data = new SimAnnParams(null);
    // Deserialize message field [set_custom_params]
    data.set_custom_params = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [YC]
    data.YC = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [HC]
    data.HC = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [YDIMS]
    data.YDIMS = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [HDIMS]
    data.HDIMS = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [NBR_ADJ]
    data.NBR_ADJ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ERR_ADJ]
    data.ERR_ADJ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [DEF_T0]
    data.DEF_T0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [DEF_K0]
    data.DEF_K0 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/SimAnnParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8aaad6aea614225c4b96a7800e09124';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # flag to switch to custom params defined in this message. If not set, GraspIt's default settings are kept
    bool set_custom_params
    
    
    # //Annealing parameters
    # //! Annealing constant for neighbor generation schedule
    float64 YC	 	#	GraspIt! default: 7.0
    # //! Annealing constant for error acceptance schedule
    float64 HC	 	#	GraspIt! default: 7.0
    # //! Number of dimensions for neighbor generation schedule
    float64 YDIMS	#	GraspIt! default: 8.0
    # //! Number of dimensions for error acceptance schedule
    float64 HDIMS	#	GraspIt! default: 8.0
    # //! Adjust factor for neighbor generation schedule
    float64 NBR_ADJ	#	GraspIt! default: 1.0
    # //! Adjust raw errors reported by states to be in the relevant range of the annealing schedule
    float64 ERR_ADJ	#	GraspIt! default: 1.0e-6
    # //! Starting temperatue
    float64 DEF_T0	#	GraspIt! default: 1e6
    # //! Starting step
    float64 DEF_K0	#	GraspIt! default: 30000
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimAnnParams(null);
    if (msg.set_custom_params !== undefined) {
      resolved.set_custom_params = msg.set_custom_params;
    }
    else {
      resolved.set_custom_params = false
    }

    if (msg.YC !== undefined) {
      resolved.YC = msg.YC;
    }
    else {
      resolved.YC = 0.0
    }

    if (msg.HC !== undefined) {
      resolved.HC = msg.HC;
    }
    else {
      resolved.HC = 0.0
    }

    if (msg.YDIMS !== undefined) {
      resolved.YDIMS = msg.YDIMS;
    }
    else {
      resolved.YDIMS = 0.0
    }

    if (msg.HDIMS !== undefined) {
      resolved.HDIMS = msg.HDIMS;
    }
    else {
      resolved.HDIMS = 0.0
    }

    if (msg.NBR_ADJ !== undefined) {
      resolved.NBR_ADJ = msg.NBR_ADJ;
    }
    else {
      resolved.NBR_ADJ = 0.0
    }

    if (msg.ERR_ADJ !== undefined) {
      resolved.ERR_ADJ = msg.ERR_ADJ;
    }
    else {
      resolved.ERR_ADJ = 0.0
    }

    if (msg.DEF_T0 !== undefined) {
      resolved.DEF_T0 = msg.DEF_T0;
    }
    else {
      resolved.DEF_T0 = 0.0
    }

    if (msg.DEF_K0 !== undefined) {
      resolved.DEF_K0 = msg.DEF_K0;
    }
    else {
      resolved.DEF_K0 = 0.0
    }

    return resolved;
    }
};

module.exports = SimAnnParams;
