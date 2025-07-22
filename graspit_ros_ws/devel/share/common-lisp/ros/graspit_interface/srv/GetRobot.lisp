; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude GetRobot-request.msg.html

(cl:defclass <GetRobot-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass GetRobot-request (<GetRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetRobot-request> is deprecated: use graspit_interface-srv:GetRobot-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobot-request>) ostream)
  "Serializes a message object of type '<GetRobot-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobot-request>) istream)
  "Deserializes a message object of type '<GetRobot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobot-request>)))
  "Returns string type for a service object of type '<GetRobot-request>"
  "graspit_interface/GetRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobot-request)))
  "Returns string type for a service object of type 'GetRobot-request"
  "graspit_interface/GetRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobot-request>)))
  "Returns md5sum for a message object of type '<GetRobot-request>"
  "d266719f1fbaa726b673621aacc501ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobot-request)))
  "Returns md5sum for a message object of type 'GetRobot-request"
  "d266719f1fbaa726b673621aacc501ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobot-request>)))
  "Returns full string definition for message of type '<GetRobot-request>"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobot-request)))
  "Returns full string definition for message of type 'GetRobot-request"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobot-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobot-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetRobot-response.msg.html

(cl:defclass <GetRobot-response> (roslisp-msg-protocol:ros-message)
  ((robot
    :reader robot
    :initarg :robot
    :type graspit_interface-msg:Robot
    :initform (cl:make-instance 'graspit_interface-msg:Robot))
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetRobot-response (<GetRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetRobot-response> is deprecated: use graspit_interface-srv:GetRobot-response instead.")))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <GetRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:robot-val is deprecated.  Use graspit_interface-srv:robot instead.")
  (robot m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetRobot-response>)))
    "Constants for message type '<GetRobot-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetRobot-response)))
    "Constants for message type 'GetRobot-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobot-response>) ostream)
  "Serializes a message object of type '<GetRobot-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobot-response>) istream)
  "Deserializes a message object of type '<GetRobot-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobot-response>)))
  "Returns string type for a service object of type '<GetRobot-response>"
  "graspit_interface/GetRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobot-response)))
  "Returns string type for a service object of type 'GetRobot-response"
  "graspit_interface/GetRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobot-response>)))
  "Returns md5sum for a message object of type '<GetRobot-response>"
  "d266719f1fbaa726b673621aacc501ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobot-response)))
  "Returns md5sum for a message object of type 'GetRobot-response"
  "d266719f1fbaa726b673621aacc501ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobot-response>)))
  "Returns full string definition for message of type '<GetRobot-response>"
  (cl:format cl:nil "Robot robot~%~%uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%================================================================================~%MSG: graspit_interface/Robot~%std_msgs/Header header~%~%geometry_msgs/Pose pose~%sensor_msgs/JointState[] joints~%float64[] dofs~%graspit_interface/TactileSensorData tactile~%Contact[] contacts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: graspit_interface/TactileSensorData~%std_msgs/Header header~%geometry_msgs/PoseStamped[] sensor_poses~%float64[] sensor_forces~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: graspit_interface/Contact~%string body1~%string body2~%~%geometry_msgs/PoseStamped ps # in the graspit world frame~%~%float64 cof # coefficient of friction.~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobot-response)))
  "Returns full string definition for message of type 'GetRobot-response"
  (cl:format cl:nil "Robot robot~%~%uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%================================================================================~%MSG: graspit_interface/Robot~%std_msgs/Header header~%~%geometry_msgs/Pose pose~%sensor_msgs/JointState[] joints~%float64[] dofs~%graspit_interface/TactileSensorData tactile~%Contact[] contacts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: graspit_interface/TactileSensorData~%std_msgs/Header header~%geometry_msgs/PoseStamped[] sensor_poses~%float64[] sensor_forces~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: graspit_interface/Contact~%string body1~%string body2~%~%geometry_msgs/PoseStamped ps # in the graspit world frame~%~%float64 cof # coefficient of friction.~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobot-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobot-response
    (cl:cons ':robot (robot msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobot)))
  'GetRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobot)))
  'GetRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobot)))
  "Returns string type for a service object of type '<GetRobot>"
  "graspit_interface/GetRobot")