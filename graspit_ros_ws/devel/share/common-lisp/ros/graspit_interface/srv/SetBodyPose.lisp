; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude SetBodyPose-request.msg.html

(cl:defclass <SetBodyPose-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetBodyPose-request (<SetBodyPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBodyPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBodyPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetBodyPose-request> is deprecated: use graspit_interface-srv:SetBodyPose-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetBodyPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetBodyPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:pose-val is deprecated.  Use graspit_interface-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBodyPose-request>) ostream)
  "Serializes a message object of type '<SetBodyPose-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBodyPose-request>) istream)
  "Deserializes a message object of type '<SetBodyPose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBodyPose-request>)))
  "Returns string type for a service object of type '<SetBodyPose-request>"
  "graspit_interface/SetBodyPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBodyPose-request)))
  "Returns string type for a service object of type 'SetBodyPose-request"
  "graspit_interface/SetBodyPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBodyPose-request>)))
  "Returns md5sum for a message object of type '<SetBodyPose-request>"
  "6f869681a43e0646852b48a974e19787")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBodyPose-request)))
  "Returns md5sum for a message object of type 'SetBodyPose-request"
  "6f869681a43e0646852b48a974e19787")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBodyPose-request>)))
  "Returns full string definition for message of type '<SetBodyPose-request>"
  (cl:format cl:nil "int32 id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBodyPose-request)))
  "Returns full string definition for message of type 'SetBodyPose-request"
  (cl:format cl:nil "int32 id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBodyPose-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBodyPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBodyPose-request
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SetBodyPose-response.msg.html

(cl:defclass <SetBodyPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetBodyPose-response (<SetBodyPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBodyPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBodyPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetBodyPose-response> is deprecated: use graspit_interface-srv:SetBodyPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetBodyPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetBodyPose-response>)))
    "Constants for message type '<SetBodyPose-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_INVALID_POSE . 2)
    (:RESULT_BODY_IN_COLLISION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetBodyPose-response)))
    "Constants for message type 'SetBodyPose-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_INVALID_POSE . 2)
    (:RESULT_BODY_IN_COLLISION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBodyPose-response>) ostream)
  "Serializes a message object of type '<SetBodyPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBodyPose-response>) istream)
  "Deserializes a message object of type '<SetBodyPose-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBodyPose-response>)))
  "Returns string type for a service object of type '<SetBodyPose-response>"
  "graspit_interface/SetBodyPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBodyPose-response)))
  "Returns string type for a service object of type 'SetBodyPose-response"
  "graspit_interface/SetBodyPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBodyPose-response>)))
  "Returns md5sum for a message object of type '<SetBodyPose-response>"
  "6f869681a43e0646852b48a974e19787")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBodyPose-response)))
  "Returns md5sum for a message object of type 'SetBodyPose-response"
  "6f869681a43e0646852b48a974e19787")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBodyPose-response>)))
  "Returns full string definition for message of type '<SetBodyPose-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS           = 0~%uint8 RESULT_INVALID_ID        = 1~%uint8 RESULT_INVALID_POSE      = 2~%uint8 RESULT_BODY_IN_COLLISION = 3~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBodyPose-response)))
  "Returns full string definition for message of type 'SetBodyPose-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS           = 0~%uint8 RESULT_INVALID_ID        = 1~%uint8 RESULT_INVALID_POSE      = 2~%uint8 RESULT_BODY_IN_COLLISION = 3~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBodyPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBodyPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBodyPose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBodyPose)))
  'SetBodyPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBodyPose)))
  'SetBodyPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBodyPose)))
  "Returns string type for a service object of type '<SetBodyPose>"
  "graspit_interface/SetBodyPose")