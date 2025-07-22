; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude Energy.msg.html

(cl:defclass <Energy> (roslisp-msg-protocol:ros-message)
  ((energy
    :reader energy
    :initarg :energy
    :type cl:float
    :initform 0.0)
   (energy_type
    :reader energy_type
    :initarg :energy_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Energy (<Energy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Energy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Energy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<Energy> is deprecated: use graspit_interface-msg:Energy instead.")))

(cl:ensure-generic-function 'energy-val :lambda-list '(m))
(cl:defmethod energy-val ((m <Energy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:energy-val is deprecated.  Use graspit_interface-msg:energy instead.")
  (energy m))

(cl:ensure-generic-function 'energy_type-val :lambda-list '(m))
(cl:defmethod energy_type-val ((m <Energy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:energy_type-val is deprecated.  Use graspit_interface-msg:energy_type instead.")
  (energy_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Energy>)))
    "Constants for message type '<Energy>"
  '((:ENERGY_VOLUME . 0)
    (:ENERGY_EPSILON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Energy)))
    "Constants for message type 'Energy"
  '((:ENERGY_VOLUME . 0)
    (:ENERGY_EPSILON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Energy>) ostream)
  "Serializes a message object of type '<Energy>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'energy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'energy_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Energy>) istream)
  "Deserializes a message object of type '<Energy>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'energy_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Energy>)))
  "Returns string type for a message object of type '<Energy>"
  "graspit_interface/Energy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Energy)))
  "Returns string type for a message object of type 'Energy"
  "graspit_interface/Energy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Energy>)))
  "Returns md5sum for a message object of type '<Energy>"
  "b02fc5d9e41e0b8406a4fd73ca0a93db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Energy)))
  "Returns md5sum for a message object of type 'Energy"
  "b02fc5d9e41e0b8406a4fd73ca0a93db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Energy>)))
  "Returns full string definition for message of type '<Energy>"
  (cl:format cl:nil "float64 energy~%uint8 energy_type~%~%uint8 ENERGY_VOLUME = 0~%uint8 ENERGY_EPSILON = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Energy)))
  "Returns full string definition for message of type 'Energy"
  (cl:format cl:nil "float64 energy~%uint8 energy_type~%~%uint8 ENERGY_VOLUME = 0~%uint8 ENERGY_EPSILON = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Energy>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Energy>))
  "Converts a ROS message object to a list"
  (cl:list 'Energy
    (cl:cons ':energy (energy msg))
    (cl:cons ':energy_type (energy_type msg))
))
