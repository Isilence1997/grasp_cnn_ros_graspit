; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude SetDynamics-request.msg.html

(cl:defclass <SetDynamics-request> (roslisp-msg-protocol:ros-message)
  ((enableDynamics
    :reader enableDynamics
    :initarg :enableDynamics
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDynamics-request (<SetDynamics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDynamics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDynamics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetDynamics-request> is deprecated: use graspit_interface-srv:SetDynamics-request instead.")))

(cl:ensure-generic-function 'enableDynamics-val :lambda-list '(m))
(cl:defmethod enableDynamics-val ((m <SetDynamics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:enableDynamics-val is deprecated.  Use graspit_interface-srv:enableDynamics instead.")
  (enableDynamics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDynamics-request>) ostream)
  "Serializes a message object of type '<SetDynamics-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableDynamics) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDynamics-request>) istream)
  "Deserializes a message object of type '<SetDynamics-request>"
    (cl:setf (cl:slot-value msg 'enableDynamics) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDynamics-request>)))
  "Returns string type for a service object of type '<SetDynamics-request>"
  "graspit_interface/SetDynamicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDynamics-request)))
  "Returns string type for a service object of type 'SetDynamics-request"
  "graspit_interface/SetDynamicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDynamics-request>)))
  "Returns md5sum for a message object of type '<SetDynamics-request>"
  "fd90fb715fe24e5e2d9259a52a4ce515")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDynamics-request)))
  "Returns md5sum for a message object of type 'SetDynamics-request"
  "fd90fb715fe24e5e2d9259a52a4ce515")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDynamics-request>)))
  "Returns full string definition for message of type '<SetDynamics-request>"
  (cl:format cl:nil "bool enableDynamics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDynamics-request)))
  "Returns full string definition for message of type 'SetDynamics-request"
  (cl:format cl:nil "bool enableDynamics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDynamics-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDynamics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDynamics-request
    (cl:cons ':enableDynamics (enableDynamics msg))
))
;//! \htmlinclude SetDynamics-response.msg.html

(cl:defclass <SetDynamics-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDynamics-response (<SetDynamics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDynamics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDynamics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetDynamics-response> is deprecated: use graspit_interface-srv:SetDynamics-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDynamics-response>) ostream)
  "Serializes a message object of type '<SetDynamics-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDynamics-response>) istream)
  "Deserializes a message object of type '<SetDynamics-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDynamics-response>)))
  "Returns string type for a service object of type '<SetDynamics-response>"
  "graspit_interface/SetDynamicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDynamics-response)))
  "Returns string type for a service object of type 'SetDynamics-response"
  "graspit_interface/SetDynamicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDynamics-response>)))
  "Returns md5sum for a message object of type '<SetDynamics-response>"
  "fd90fb715fe24e5e2d9259a52a4ce515")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDynamics-response)))
  "Returns md5sum for a message object of type 'SetDynamics-response"
  "fd90fb715fe24e5e2d9259a52a4ce515")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDynamics-response>)))
  "Returns full string definition for message of type '<SetDynamics-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDynamics-response)))
  "Returns full string definition for message of type 'SetDynamics-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDynamics-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDynamics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDynamics-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDynamics)))
  'SetDynamics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDynamics)))
  'SetDynamics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDynamics)))
  "Returns string type for a service object of type '<SetDynamics>"
  "graspit_interface/SetDynamics")