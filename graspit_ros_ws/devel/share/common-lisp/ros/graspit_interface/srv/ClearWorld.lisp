; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ClearWorld-request.msg.html

(cl:defclass <ClearWorld-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearWorld-request (<ClearWorld-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearWorld-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearWorld-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ClearWorld-request> is deprecated: use graspit_interface-srv:ClearWorld-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearWorld-request>) ostream)
  "Serializes a message object of type '<ClearWorld-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearWorld-request>) istream)
  "Deserializes a message object of type '<ClearWorld-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearWorld-request>)))
  "Returns string type for a service object of type '<ClearWorld-request>"
  "graspit_interface/ClearWorldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearWorld-request)))
  "Returns string type for a service object of type 'ClearWorld-request"
  "graspit_interface/ClearWorldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearWorld-request>)))
  "Returns md5sum for a message object of type '<ClearWorld-request>"
  "97cab54dd6dbe9e837f2d3a5a24e81f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearWorld-request)))
  "Returns md5sum for a message object of type 'ClearWorld-request"
  "97cab54dd6dbe9e837f2d3a5a24e81f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearWorld-request>)))
  "Returns full string definition for message of type '<ClearWorld-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearWorld-request)))
  "Returns full string definition for message of type 'ClearWorld-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearWorld-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearWorld-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearWorld-request
))
;//! \htmlinclude ClearWorld-response.msg.html

(cl:defclass <ClearWorld-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ClearWorld-response (<ClearWorld-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearWorld-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearWorld-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ClearWorld-response> is deprecated: use graspit_interface-srv:ClearWorld-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ClearWorld-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ClearWorld-response>)))
    "Constants for message type '<ClearWorld-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ClearWorld-response)))
    "Constants for message type 'ClearWorld-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearWorld-response>) ostream)
  "Serializes a message object of type '<ClearWorld-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearWorld-response>) istream)
  "Deserializes a message object of type '<ClearWorld-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearWorld-response>)))
  "Returns string type for a service object of type '<ClearWorld-response>"
  "graspit_interface/ClearWorldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearWorld-response)))
  "Returns string type for a service object of type 'ClearWorld-response"
  "graspit_interface/ClearWorldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearWorld-response>)))
  "Returns md5sum for a message object of type '<ClearWorld-response>"
  "97cab54dd6dbe9e837f2d3a5a24e81f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearWorld-response)))
  "Returns md5sum for a message object of type 'ClearWorld-response"
  "97cab54dd6dbe9e837f2d3a5a24e81f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearWorld-response>)))
  "Returns full string definition for message of type '<ClearWorld-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearWorld-response)))
  "Returns full string definition for message of type 'ClearWorld-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearWorld-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearWorld-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearWorld-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearWorld)))
  'ClearWorld-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearWorld)))
  'ClearWorld-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearWorld)))
  "Returns string type for a service object of type '<ClearWorld>"
  "graspit_interface/ClearWorld")