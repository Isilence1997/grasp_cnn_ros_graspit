// Auto-generated. Do not edit!

// (in-package graspit_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Planner = require('./Planner.js');
let SearchSpace = require('./SearchSpace.js');
let SearchContact = require('./SearchContact.js');
let SimAnnParams = require('./SimAnnParams.js');

//-----------------------------------------------------------

class PlanGraspsGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.graspable_body_id = null;
      this.planner = null;
      this.search_energy = null;
      this.search_space = null;
      this.search_contact = null;
      this.sim_ann_params = null;
      this.max_steps = null;
      this.feedback_num_steps = null;
    }
    else {
      if (initObj.hasOwnProperty('graspable_body_id')) {
        this.graspable_body_id = initObj.graspable_body_id
      }
      else {
        this.graspable_body_id = 0;
      }
      if (initObj.hasOwnProperty('planner')) {
        this.planner = initObj.planner
      }
      else {
        this.planner = new Planner();
      }
      if (initObj.hasOwnProperty('search_energy')) {
        this.search_energy = initObj.search_energy
      }
      else {
        this.search_energy = '';
      }
      if (initObj.hasOwnProperty('search_space')) {
        this.search_space = initObj.search_space
      }
      else {
        this.search_space = new SearchSpace();
      }
      if (initObj.hasOwnProperty('search_contact')) {
        this.search_contact = initObj.search_contact
      }
      else {
        this.search_contact = new SearchContact();
      }
      if (initObj.hasOwnProperty('sim_ann_params')) {
        this.sim_ann_params = initObj.sim_ann_params
      }
      else {
        this.sim_ann_params = new SimAnnParams();
      }
      if (initObj.hasOwnProperty('max_steps')) {
        this.max_steps = initObj.max_steps
      }
      else {
        this.max_steps = 0;
      }
      if (initObj.hasOwnProperty('feedback_num_steps')) {
        this.feedback_num_steps = initObj.feedback_num_steps
      }
      else {
        this.feedback_num_steps = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanGraspsGoal
    // Serialize message field [graspable_body_id]
    bufferOffset = _serializer.int32(obj.graspable_body_id, buffer, bufferOffset);
    // Serialize message field [planner]
    bufferOffset = Planner.serialize(obj.planner, buffer, bufferOffset);
    // Serialize message field [search_energy]
    bufferOffset = _serializer.string(obj.search_energy, buffer, bufferOffset);
    // Serialize message field [search_space]
    bufferOffset = SearchSpace.serialize(obj.search_space, buffer, bufferOffset);
    // Serialize message field [search_contact]
    bufferOffset = SearchContact.serialize(obj.search_contact, buffer, bufferOffset);
    // Serialize message field [sim_ann_params]
    bufferOffset = SimAnnParams.serialize(obj.sim_ann_params, buffer, bufferOffset);
    // Serialize message field [max_steps]
    bufferOffset = _serializer.int32(obj.max_steps, buffer, bufferOffset);
    // Serialize message field [feedback_num_steps]
    bufferOffset = _serializer.int32(obj.feedback_num_steps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanGraspsGoal
    let len;
    let data = new PlanGraspsGoal(null);
    // Deserialize message field [graspable_body_id]
    data.graspable_body_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [planner]
    data.planner = Planner.deserialize(buffer, bufferOffset);
    // Deserialize message field [search_energy]
    data.search_energy = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [search_space]
    data.search_space = SearchSpace.deserialize(buffer, bufferOffset);
    // Deserialize message field [search_contact]
    data.search_contact = SearchContact.deserialize(buffer, bufferOffset);
    // Deserialize message field [sim_ann_params]
    data.sim_ann_params = SimAnnParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_steps]
    data.max_steps = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [feedback_num_steps]
    data.feedback_num_steps = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.search_energy.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'graspit_interface/PlanGraspsGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18f1b3ccd1d8b357cb312d3a46fdb7ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal
    int32 graspable_body_id
    
    Planner planner
    string search_energy
    SearchSpace search_space
    SearchContact search_contact
    SimAnnParams sim_ann_params
    
    int32 max_steps
    int32 feedback_num_steps
    
    ================================================================================
    MSG: graspit_interface/Planner
    uint8 SIM_ANN                      = 0
    uint8 MULTI_THREADED               = 1
    
    uint8 type
    ================================================================================
    MSG: graspit_interface/SearchSpace
    uint8 SPACE_AXIS_ANGLE    = 0
    uint8 SPACE_COMPLETE      = 1
    uint8 SPACE_ELLIPSOID     = 2
    uint8 SPACE_APPROACH      = 3
    
    uint8 type
    ================================================================================
    MSG: graspit_interface/SearchContact
    uint8 CONTACT_PRESET    = 0
    uint8 CONTACT_LIVE      = 1
    
    uint8 type	
    ================================================================================
    MSG: graspit_interface/SimAnnParams
    
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
    const resolved = new PlanGraspsGoal(null);
    if (msg.graspable_body_id !== undefined) {
      resolved.graspable_body_id = msg.graspable_body_id;
    }
    else {
      resolved.graspable_body_id = 0
    }

    if (msg.planner !== undefined) {
      resolved.planner = Planner.Resolve(msg.planner)
    }
    else {
      resolved.planner = new Planner()
    }

    if (msg.search_energy !== undefined) {
      resolved.search_energy = msg.search_energy;
    }
    else {
      resolved.search_energy = ''
    }

    if (msg.search_space !== undefined) {
      resolved.search_space = SearchSpace.Resolve(msg.search_space)
    }
    else {
      resolved.search_space = new SearchSpace()
    }

    if (msg.search_contact !== undefined) {
      resolved.search_contact = SearchContact.Resolve(msg.search_contact)
    }
    else {
      resolved.search_contact = new SearchContact()
    }

    if (msg.sim_ann_params !== undefined) {
      resolved.sim_ann_params = SimAnnParams.Resolve(msg.sim_ann_params)
    }
    else {
      resolved.sim_ann_params = new SimAnnParams()
    }

    if (msg.max_steps !== undefined) {
      resolved.max_steps = msg.max_steps;
    }
    else {
      resolved.max_steps = 0
    }

    if (msg.feedback_num_steps !== undefined) {
      resolved.feedback_num_steps = msg.feedback_num_steps;
    }
    else {
      resolved.feedback_num_steps = 0
    }

    return resolved;
    }
};

module.exports = PlanGraspsGoal;
