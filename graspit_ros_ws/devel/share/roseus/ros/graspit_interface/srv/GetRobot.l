;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GetRobot)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GetRobot (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GETROBOT")
  (make-package "GRASPIT_INTERFACE::GETROBOT"))
(unless (find-package "GRASPIT_INTERFACE::GETROBOTREQUEST")
  (make-package "GRASPIT_INTERFACE::GETROBOTREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::GETROBOTRESPONSE")
  (make-package "GRASPIT_INTERFACE::GETROBOTRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::GetRobotRequest
  :super ros::object
  :slots (_id ))

(defmethod graspit_interface::GetRobotRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::GETROBOTRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::GETROBOTRESPONSE"))
(defconstant graspit_interface::GetRobotResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::GETROBOTRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::GETROBOTRESPONSE"))
(defconstant graspit_interface::GetRobotResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::GetRobotResponse
  :super ros::object
  :slots (_robot _result ))

(defmethod graspit_interface::GetRobotResponse
  (:init
   (&key
    ((:robot __robot) (instance graspit_interface::Robot :init))
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _robot __robot)
   (setq _result (round __result))
   self)
  (:robot
   (&rest __robot)
   (if (keywordp (car __robot))
       (send* _robot __robot)
     (progn
       (if __robot (setq _robot (car __robot)))
       _robot)))
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; graspit_interface/Robot _robot
    (send _robot :serialization-length)
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; graspit_interface/Robot _robot
       (send _robot :serialize s)
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; graspit_interface/Robot _robot
     (send _robot :deserialize buf ptr-) (incf ptr- (send _robot :serialization-length))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::GetRobot
  :super ros::object
  :slots ())

(setf (get graspit_interface::GetRobot :md5sum-) "d266719f1fbaa726b673621aacc501ec")
(setf (get graspit_interface::GetRobot :datatype-) "graspit_interface/GetRobot")
(setf (get graspit_interface::GetRobot :request) graspit_interface::GetRobotRequest)
(setf (get graspit_interface::GetRobot :response) graspit_interface::GetRobotResponse)

(defmethod graspit_interface::GetRobotRequest
  (:response () (instance graspit_interface::GetRobotResponse :init)))

(setf (get graspit_interface::GetRobotRequest :md5sum-) "d266719f1fbaa726b673621aacc501ec")
(setf (get graspit_interface::GetRobotRequest :datatype-) "graspit_interface/GetRobotRequest")
(setf (get graspit_interface::GetRobotRequest :definition-)
      "int32 id
---
Robot robot

uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result


================================================================================
MSG: graspit_interface/Robot
std_msgs/Header header

geometry_msgs/Pose pose
sensor_msgs/JointState[] joints
float64[] dofs
graspit_interface/TactileSensorData tactile
Contact[] contacts

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: graspit_interface/TactileSensorData
std_msgs/Header header
geometry_msgs/PoseStamped[] sensor_poses
float64[] sensor_forces

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: graspit_interface/Contact
string body1
string body2

geometry_msgs/PoseStamped ps # in the graspit world frame

float64 cof # coefficient of friction.


")

(setf (get graspit_interface::GetRobotResponse :md5sum-) "d266719f1fbaa726b673621aacc501ec")
(setf (get graspit_interface::GetRobotResponse :datatype-) "graspit_interface/GetRobotResponse")
(setf (get graspit_interface::GetRobotResponse :definition-)
      "int32 id
---
Robot robot

uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result


================================================================================
MSG: graspit_interface/Robot
std_msgs/Header header

geometry_msgs/Pose pose
sensor_msgs/JointState[] joints
float64[] dofs
graspit_interface/TactileSensorData tactile
Contact[] contacts

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: graspit_interface/TactileSensorData
std_msgs/Header header
geometry_msgs/PoseStamped[] sensor_poses
float64[] sensor_forces

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: graspit_interface/Contact
string body1
string body2

geometry_msgs/PoseStamped ps # in the graspit world frame

float64 cof # coefficient of friction.


")



(provide :graspit_interface/GetRobot "d266719f1fbaa726b673621aacc501ec")


