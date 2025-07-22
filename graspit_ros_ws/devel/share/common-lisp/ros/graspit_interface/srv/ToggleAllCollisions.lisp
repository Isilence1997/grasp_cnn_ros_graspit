; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ToggleAllCollisions-request.msg.html

(cl:defclass <ToggleAllCollisions-request> (roslisp-msg-protocol:ros-message)
  ((enableCollisions
    :reader enableCollisions
    :initarg :enableCollisions
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ToggleAllCollisions-request (<ToggleAllCollisions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleAllCollisions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleAllCollisions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ToggleAllCollisions-request> is deprecated: use graspit_interface-srv:ToggleAllCollisions-request instead.")))

(cl:ensure-generic-function 'enableCollisions-val :lambda-list '(m))
(cl:defmethod enableCollisions-val ((m <ToggleAllCollisions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:enableCollisions-val is deprecated.  Use graspit_interface-srv:enableCollisions instead.")
  (enableCollisions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleAllCollisions-request>) ostream)
  "Serializes a message object of type '<ToggleAllCollisions-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableCollisions) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleAllCollisions-request>) istream)
  "Deserializes a message object of type '<ToggleAllCollisions-request>"
    (cl:setf (cl:slot-value msg 'enableCollisions) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleAllCollisions-request>)))
  "Returns string type for a service object of type '<ToggleAllCollisions-request>"
  "graspit_interface/ToggleAllCollisionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleAllCollisions-request)))
  "Returns string type for a service object of type 'ToggleAllCollisions-request"
  "graspit_interface/ToggleAllCollisionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleAllCollisions-request>)))
  "Returns md5sum for a message object of type '<ToggleAllCollisions-request>"
  "9c8e2540904142e4bddf9c31767c9e80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleAllCollisions-request)))
  "Returns md5sum for a message object of type 'ToggleAllCollisions-request"
  "9c8e2540904142e4bddf9c31767c9e80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleAllCollisions-request>)))
  "Returns full string definition for message of type '<ToggleAllCollisions-request>"
  (cl:format cl:nil "bool enableCollisions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleAllCollisions-request)))
  "Returns full string definition for message of type 'ToggleAllCollisions-request"
  (cl:format cl:nil "bool enableCollisions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleAllCollisions-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleAllCollisions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleAllCollisions-request
    (cl:cons ':enableCollisions (enableCollisions msg))
))
;//! \htmlinclude ToggleAllCollisions-response.msg.html

(cl:defclass <ToggleAllCollisions-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ToggleAllCollisions-response (<ToggleAllCollisions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleAllCollisions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleAllCollisions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ToggleAllCollisions-response> is deprecated: use graspit_interface-srv:ToggleAllCollisions-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleAllCollisions-response>) ostream)
  "Serializes a message object of type '<ToggleAllCollisions-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleAllCollisions-response>) istream)
  "Deserializes a message object of type '<ToggleAllCollisions-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleAllCollisions-response>)))
  "Returns string type for a service object of type '<ToggleAllCollisions-response>"
  "graspit_interface/ToggleAllCollisionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleAllCollisions-response)))
  "Returns string type for a service object of type 'ToggleAllCollisions-response"
  "graspit_interface/ToggleAllCollisionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleAllCollisions-response>)))
  "Returns md5sum for a message object of type '<ToggleAllCollisions-response>"
  "9c8e2540904142e4bddf9c31767c9e80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleAllCollisions-response)))
  "Returns md5sum for a message object of type 'ToggleAllCollisions-response"
  "9c8e2540904142e4bddf9c31767c9e80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleAllCollisions-response>)))
  "Returns full string definition for message of type '<ToggleAllCollisions-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleAllCollisions-response)))
  "Returns full string definition for message of type 'ToggleAllCollisions-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleAllCollisions-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleAllCollisions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleAllCollisions-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToggleAllCollisions)))
  'ToggleAllCollisions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToggleAllCollisions)))
  'ToggleAllCollisions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleAllCollisions)))
  "Returns string type for a service object of type '<ToggleAllCollisions>"
  "graspit_interface/ToggleAllCollisions")