; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude SearchSpace.msg.html

(cl:defclass <SearchSpace> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SearchSpace (<SearchSpace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchSpace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchSpace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<SearchSpace> is deprecated: use graspit_interface-msg:SearchSpace instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SearchSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:type-val is deprecated.  Use graspit_interface-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SearchSpace>)))
    "Constants for message type '<SearchSpace>"
  '((:SPACE_AXIS_ANGLE . 0)
    (:SPACE_COMPLETE . 1)
    (:SPACE_ELLIPSOID . 2)
    (:SPACE_APPROACH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SearchSpace)))
    "Constants for message type 'SearchSpace"
  '((:SPACE_AXIS_ANGLE . 0)
    (:SPACE_COMPLETE . 1)
    (:SPACE_ELLIPSOID . 2)
    (:SPACE_APPROACH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchSpace>) ostream)
  "Serializes a message object of type '<SearchSpace>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchSpace>) istream)
  "Deserializes a message object of type '<SearchSpace>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchSpace>)))
  "Returns string type for a message object of type '<SearchSpace>"
  "graspit_interface/SearchSpace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchSpace)))
  "Returns string type for a message object of type 'SearchSpace"
  "graspit_interface/SearchSpace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchSpace>)))
  "Returns md5sum for a message object of type '<SearchSpace>"
  "686bd04c0c6bbe368a7da1ef3742f2d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchSpace)))
  "Returns md5sum for a message object of type 'SearchSpace"
  "686bd04c0c6bbe368a7da1ef3742f2d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchSpace>)))
  "Returns full string definition for message of type '<SearchSpace>"
  (cl:format cl:nil "uint8 SPACE_AXIS_ANGLE    = 0~%uint8 SPACE_COMPLETE      = 1~%uint8 SPACE_ELLIPSOID     = 2~%uint8 SPACE_APPROACH      = 3~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchSpace)))
  "Returns full string definition for message of type 'SearchSpace"
  (cl:format cl:nil "uint8 SPACE_AXIS_ANGLE    = 0~%uint8 SPACE_COMPLETE      = 1~%uint8 SPACE_ELLIPSOID     = 2~%uint8 SPACE_APPROACH      = 3~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchSpace>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchSpace>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchSpace
    (cl:cons ':type (type msg))
))
