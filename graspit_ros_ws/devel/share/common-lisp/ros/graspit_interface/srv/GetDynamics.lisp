; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude GetDynamics-request.msg.html

(cl:defclass <GetDynamics-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDynamics-request (<GetDynamics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDynamics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDynamics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetDynamics-request> is deprecated: use graspit_interface-srv:GetDynamics-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDynamics-request>) ostream)
  "Serializes a message object of type '<GetDynamics-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDynamics-request>) istream)
  "Deserializes a message object of type '<GetDynamics-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDynamics-request>)))
  "Returns string type for a service object of type '<GetDynamics-request>"
  "graspit_interface/GetDynamicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDynamics-request)))
  "Returns string type for a service object of type 'GetDynamics-request"
  "graspit_interface/GetDynamicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDynamics-request>)))
  "Returns md5sum for a message object of type '<GetDynamics-request>"
  "d6fee31102eceebe1746ef7051cbdb2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDynamics-request)))
  "Returns md5sum for a message object of type 'GetDynamics-request"
  "d6fee31102eceebe1746ef7051cbdb2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDynamics-request>)))
  "Returns full string definition for message of type '<GetDynamics-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDynamics-request)))
  "Returns full string definition for message of type 'GetDynamics-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDynamics-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDynamics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDynamics-request
))
;//! \htmlinclude GetDynamics-response.msg.html

(cl:defclass <GetDynamics-response> (roslisp-msg-protocol:ros-message)
  ((dynamicsEnabled
    :reader dynamicsEnabled
    :initarg :dynamicsEnabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetDynamics-response (<GetDynamics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDynamics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDynamics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetDynamics-response> is deprecated: use graspit_interface-srv:GetDynamics-response instead.")))

(cl:ensure-generic-function 'dynamicsEnabled-val :lambda-list '(m))
(cl:defmethod dynamicsEnabled-val ((m <GetDynamics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:dynamicsEnabled-val is deprecated.  Use graspit_interface-srv:dynamicsEnabled instead.")
  (dynamicsEnabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDynamics-response>) ostream)
  "Serializes a message object of type '<GetDynamics-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dynamicsEnabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDynamics-response>) istream)
  "Deserializes a message object of type '<GetDynamics-response>"
    (cl:setf (cl:slot-value msg 'dynamicsEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDynamics-response>)))
  "Returns string type for a service object of type '<GetDynamics-response>"
  "graspit_interface/GetDynamicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDynamics-response)))
  "Returns string type for a service object of type 'GetDynamics-response"
  "graspit_interface/GetDynamicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDynamics-response>)))
  "Returns md5sum for a message object of type '<GetDynamics-response>"
  "d6fee31102eceebe1746ef7051cbdb2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDynamics-response)))
  "Returns md5sum for a message object of type 'GetDynamics-response"
  "d6fee31102eceebe1746ef7051cbdb2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDynamics-response>)))
  "Returns full string definition for message of type '<GetDynamics-response>"
  (cl:format cl:nil "bool dynamicsEnabled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDynamics-response)))
  "Returns full string definition for message of type 'GetDynamics-response"
  (cl:format cl:nil "bool dynamicsEnabled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDynamics-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDynamics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDynamics-response
    (cl:cons ':dynamicsEnabled (dynamicsEnabled msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDynamics)))
  'GetDynamics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDynamics)))
  'GetDynamics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDynamics)))
  "Returns string type for a service object of type '<GetDynamics>"
  "graspit_interface/GetDynamics")