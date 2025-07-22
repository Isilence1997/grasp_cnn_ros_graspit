; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ComputeEnergy-request.msg.html

(cl:defclass <ComputeEnergy-request> (roslisp-msg-protocol:ros-message)
  ((handId
    :reader handId
    :initarg :handId
    :type cl:integer
    :initform 0)
   (graspableBodyId
    :reader graspableBodyId
    :initarg :graspableBodyId
    :type cl:integer
    :initform 0)
   (energyType
    :reader energyType
    :initarg :energyType
    :type cl:string
    :initform ""))
)

(cl:defclass ComputeEnergy-request (<ComputeEnergy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeEnergy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeEnergy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ComputeEnergy-request> is deprecated: use graspit_interface-srv:ComputeEnergy-request instead.")))

(cl:ensure-generic-function 'handId-val :lambda-list '(m))
(cl:defmethod handId-val ((m <ComputeEnergy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:handId-val is deprecated.  Use graspit_interface-srv:handId instead.")
  (handId m))

(cl:ensure-generic-function 'graspableBodyId-val :lambda-list '(m))
(cl:defmethod graspableBodyId-val ((m <ComputeEnergy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:graspableBodyId-val is deprecated.  Use graspit_interface-srv:graspableBodyId instead.")
  (graspableBodyId m))

(cl:ensure-generic-function 'energyType-val :lambda-list '(m))
(cl:defmethod energyType-val ((m <ComputeEnergy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:energyType-val is deprecated.  Use graspit_interface-srv:energyType instead.")
  (energyType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeEnergy-request>) ostream)
  "Serializes a message object of type '<ComputeEnergy-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'graspableBodyId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'graspableBodyId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'graspableBodyId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'graspableBodyId)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'energyType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'energyType))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeEnergy-request>) istream)
  "Deserializes a message object of type '<ComputeEnergy-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'graspableBodyId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'graspableBodyId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'graspableBodyId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'graspableBodyId)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'energyType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'energyType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeEnergy-request>)))
  "Returns string type for a service object of type '<ComputeEnergy-request>"
  "graspit_interface/ComputeEnergyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeEnergy-request)))
  "Returns string type for a service object of type 'ComputeEnergy-request"
  "graspit_interface/ComputeEnergyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeEnergy-request>)))
  "Returns md5sum for a message object of type '<ComputeEnergy-request>"
  "dfcebf964a22ec5ff63ce7a982066d70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeEnergy-request)))
  "Returns md5sum for a message object of type 'ComputeEnergy-request"
  "dfcebf964a22ec5ff63ce7a982066d70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeEnergy-request>)))
  "Returns full string definition for message of type '<ComputeEnergy-request>"
  (cl:format cl:nil "uint32 handId~%uint32 graspableBodyId~%string energyType~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeEnergy-request)))
  "Returns full string definition for message of type 'ComputeEnergy-request"
  (cl:format cl:nil "uint32 handId~%uint32 graspableBodyId~%string energyType~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeEnergy-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'energyType))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeEnergy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeEnergy-request
    (cl:cons ':handId (handId msg))
    (cl:cons ':graspableBodyId (graspableBodyId msg))
    (cl:cons ':energyType (energyType msg))
))
;//! \htmlinclude ComputeEnergy-response.msg.html

(cl:defclass <ComputeEnergy-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (energy
    :reader energy
    :initarg :energy
    :type cl:float
    :initform 0.0)
   (isLegal
    :reader isLegal
    :initarg :isLegal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ComputeEnergy-response (<ComputeEnergy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeEnergy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeEnergy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ComputeEnergy-response> is deprecated: use graspit_interface-srv:ComputeEnergy-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ComputeEnergy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'energy-val :lambda-list '(m))
(cl:defmethod energy-val ((m <ComputeEnergy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:energy-val is deprecated.  Use graspit_interface-srv:energy instead.")
  (energy m))

(cl:ensure-generic-function 'isLegal-val :lambda-list '(m))
(cl:defmethod isLegal-val ((m <ComputeEnergy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:isLegal-val is deprecated.  Use graspit_interface-srv:isLegal instead.")
  (isLegal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ComputeEnergy-response>)))
    "Constants for message type '<ComputeEnergy-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_HAND_ID . 1)
    (:RESULT_INVALID_BODY_ID . 2)
    (:RESULT_INVALID_ENERGY_TYPE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ComputeEnergy-response)))
    "Constants for message type 'ComputeEnergy-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_HAND_ID . 1)
    (:RESULT_INVALID_BODY_ID . 2)
    (:RESULT_INVALID_ENERGY_TYPE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeEnergy-response>) ostream)
  "Serializes a message object of type '<ComputeEnergy-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'energy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isLegal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeEnergy-response>) istream)
  "Deserializes a message object of type '<ComputeEnergy-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'energy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isLegal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeEnergy-response>)))
  "Returns string type for a service object of type '<ComputeEnergy-response>"
  "graspit_interface/ComputeEnergyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeEnergy-response)))
  "Returns string type for a service object of type 'ComputeEnergy-response"
  "graspit_interface/ComputeEnergyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeEnergy-response>)))
  "Returns md5sum for a message object of type '<ComputeEnergy-response>"
  "dfcebf964a22ec5ff63ce7a982066d70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeEnergy-response)))
  "Returns md5sum for a message object of type 'ComputeEnergy-response"
  "dfcebf964a22ec5ff63ce7a982066d70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeEnergy-response>)))
  "Returns full string definition for message of type '<ComputeEnergy-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_HAND_ID = 1~%uint8 RESULT_INVALID_BODY_ID  = 2~%uint8 RESULT_INVALID_ENERGY_TYPE = 3~%~%uint8 result~%~%float64 energy~%bool isLegal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeEnergy-response)))
  "Returns full string definition for message of type 'ComputeEnergy-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_HAND_ID = 1~%uint8 RESULT_INVALID_BODY_ID  = 2~%uint8 RESULT_INVALID_ENERGY_TYPE = 3~%~%uint8 result~%~%float64 energy~%bool isLegal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeEnergy-response>))
  (cl:+ 0
     1
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeEnergy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeEnergy-response
    (cl:cons ':result (result msg))
    (cl:cons ':energy (energy msg))
    (cl:cons ':isLegal (isLegal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComputeEnergy)))
  'ComputeEnergy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComputeEnergy)))
  'ComputeEnergy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeEnergy)))
  "Returns string type for a service object of type '<ComputeEnergy>"
  "graspit_interface/ComputeEnergy")