; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude SetRobotPose-request.msg.html

(cl:defclass <SetRobotPose-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetRobotPose-request (<SetRobotPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetRobotPose-request> is deprecated: use graspit_interface-srv:SetRobotPose-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetRobotPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetRobotPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:pose-val is deprecated.  Use graspit_interface-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotPose-request>) ostream)
  "Serializes a message object of type '<SetRobotPose-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotPose-request>) istream)
  "Deserializes a message object of type '<SetRobotPose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotPose-request>)))
  "Returns string type for a service object of type '<SetRobotPose-request>"
  "graspit_interface/SetRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotPose-request)))
  "Returns string type for a service object of type 'SetRobotPose-request"
  "graspit_interface/SetRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotPose-request>)))
  "Returns md5sum for a message object of type '<SetRobotPose-request>"
  "7bbb3bc1ae8c3ba9aafcae100780c0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotPose-request)))
  "Returns md5sum for a message object of type 'SetRobotPose-request"
  "7bbb3bc1ae8c3ba9aafcae100780c0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotPose-request>)))
  "Returns full string definition for message of type '<SetRobotPose-request>"
  (cl:format cl:nil "int32 id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotPose-request)))
  "Returns full string definition for message of type 'SetRobotPose-request"
  (cl:format cl:nil "int32 id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotPose-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotPose-request
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SetRobotPose-response.msg.html

(cl:defclass <SetRobotPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetRobotPose-response (<SetRobotPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetRobotPose-response> is deprecated: use graspit_interface-srv:SetRobotPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetRobotPose-response>)))
    "Constants for message type '<SetRobotPose-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_INVALID_POSE . 2)
    (:RESULT_ROBOT_IN_COLLISION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetRobotPose-response)))
    "Constants for message type 'SetRobotPose-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_INVALID_POSE . 2)
    (:RESULT_ROBOT_IN_COLLISION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotPose-response>) ostream)
  "Serializes a message object of type '<SetRobotPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotPose-response>) istream)
  "Deserializes a message object of type '<SetRobotPose-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotPose-response>)))
  "Returns string type for a service object of type '<SetRobotPose-response>"
  "graspit_interface/SetRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotPose-response)))
  "Returns string type for a service object of type 'SetRobotPose-response"
  "graspit_interface/SetRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotPose-response>)))
  "Returns md5sum for a message object of type '<SetRobotPose-response>"
  "7bbb3bc1ae8c3ba9aafcae100780c0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotPose-response)))
  "Returns md5sum for a message object of type 'SetRobotPose-response"
  "7bbb3bc1ae8c3ba9aafcae100780c0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotPose-response>)))
  "Returns full string definition for message of type '<SetRobotPose-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS            = 0~%uint8 RESULT_INVALID_ID         = 1~%uint8 RESULT_INVALID_POSE       = 2~%uint8 RESULT_ROBOT_IN_COLLISION = 3~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotPose-response)))
  "Returns full string definition for message of type 'SetRobotPose-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS            = 0~%uint8 RESULT_INVALID_ID         = 1~%uint8 RESULT_INVALID_POSE       = 2~%uint8 RESULT_ROBOT_IN_COLLISION = 3~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotPose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRobotPose)))
  'SetRobotPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRobotPose)))
  'SetRobotPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotPose)))
  "Returns string type for a service object of type '<SetRobotPose>"
  "graspit_interface/SetRobotPose")