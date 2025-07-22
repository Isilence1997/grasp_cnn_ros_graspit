
"use strict";

let SetBodyPose = require('./SetBodyPose.js')
let SaveImage = require('./SaveImage.js')
let ImportRobot = require('./ImportRobot.js')
let SaveWorld = require('./SaveWorld.js')
let ToggleAllCollisions = require('./ToggleAllCollisions.js')
let ForceRobotDOF = require('./ForceRobotDOF.js')
let SetDynamics = require('./SetDynamics.js')
let GetBodies = require('./GetBodies.js')
let GetDynamics = require('./GetDynamics.js')
let GetBody = require('./GetBody.js')
let SetGraspableBodyPose = require('./SetGraspableBodyPose.js')
let GetGraspableBodies = require('./GetGraspableBodies.js')
let SetRobotPose = require('./SetRobotPose.js')
let ApproachToContact = require('./ApproachToContact.js')
let ImportGraspableBody = require('./ImportGraspableBody.js')
let GetRobot = require('./GetRobot.js')
let ComputeEnergy = require('./ComputeEnergy.js')
let ComputeQuality = require('./ComputeQuality.js')
let GetRobots = require('./GetRobots.js')
let ClearWorld = require('./ClearWorld.js')
let AutoGrasp = require('./AutoGrasp.js')
let MoveDOFToContacts = require('./MoveDOFToContacts.js')
let DynamicAutoGraspComplete = require('./DynamicAutoGraspComplete.js')
let GetGraspableBody = require('./GetGraspableBody.js')
let ImportObstacle = require('./ImportObstacle.js')
let AutoOpen = require('./AutoOpen.js')
let LoadWorld = require('./LoadWorld.js')
let SetRobotDesiredDOF = require('./SetRobotDesiredDOF.js')
let FindInitialContact = require('./FindInitialContact.js')

module.exports = {
  SetBodyPose: SetBodyPose,
  SaveImage: SaveImage,
  ImportRobot: ImportRobot,
  SaveWorld: SaveWorld,
  ToggleAllCollisions: ToggleAllCollisions,
  ForceRobotDOF: ForceRobotDOF,
  SetDynamics: SetDynamics,
  GetBodies: GetBodies,
  GetDynamics: GetDynamics,
  GetBody: GetBody,
  SetGraspableBodyPose: SetGraspableBodyPose,
  GetGraspableBodies: GetGraspableBodies,
  SetRobotPose: SetRobotPose,
  ApproachToContact: ApproachToContact,
  ImportGraspableBody: ImportGraspableBody,
  GetRobot: GetRobot,
  ComputeEnergy: ComputeEnergy,
  ComputeQuality: ComputeQuality,
  GetRobots: GetRobots,
  ClearWorld: ClearWorld,
  AutoGrasp: AutoGrasp,
  MoveDOFToContacts: MoveDOFToContacts,
  DynamicAutoGraspComplete: DynamicAutoGraspComplete,
  GetGraspableBody: GetGraspableBody,
  ImportObstacle: ImportObstacle,
  AutoOpen: AutoOpen,
  LoadWorld: LoadWorld,
  SetRobotDesiredDOF: SetRobotDesiredDOF,
  FindInitialContact: FindInitialContact,
};
