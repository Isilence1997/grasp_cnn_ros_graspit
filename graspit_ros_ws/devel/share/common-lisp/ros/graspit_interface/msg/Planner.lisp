; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude Planner.msg.html

(cl:defclass <Planner> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Planner (<Planner>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Planner>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Planner)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<Planner> is deprecated: use graspit_interface-msg:Planner instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Planner>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:type-val is deprecated.  Use graspit_interface-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Planner>)))
    "Constants for message type '<Planner>"
  '((:SIM_ANN . 0)
    (:MULTI_THREADED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Planner)))
    "Constants for message type 'Planner"
  '((:SIM_ANN . 0)
    (:MULTI_THREADED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Planner>) ostream)
  "Serializes a message object of type '<Planner>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Planner>) istream)
  "Deserializes a message object of type '<Planner>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Planner>)))
  "Returns string type for a message object of type '<Planner>"
  "graspit_interface/Planner")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planner)))
  "Returns string type for a message object of type 'Planner"
  "graspit_interface/Planner")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Planner>)))
  "Returns md5sum for a message object of type '<Planner>"
  "9f72709c2fd658bcbafe72047dc86825")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Planner)))
  "Returns md5sum for a message object of type 'Planner"
  "9f72709c2fd658bcbafe72047dc86825")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Planner>)))
  "Returns full string definition for message of type '<Planner>"
  (cl:format cl:nil "uint8 SIM_ANN                      = 0~%uint8 MULTI_THREADED               = 1~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Planner)))
  "Returns full string definition for message of type 'Planner"
  (cl:format cl:nil "uint8 SIM_ANN                      = 0~%uint8 MULTI_THREADED               = 1~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Planner>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Planner>))
  "Converts a ROS message object to a list"
  (cl:list 'Planner
    (cl:cons ':type (type msg))
))
