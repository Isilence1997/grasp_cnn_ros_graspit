; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude AutoOpen-request.msg.html

(cl:defclass <AutoOpen-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass AutoOpen-request (<AutoOpen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoOpen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoOpen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<AutoOpen-request> is deprecated: use graspit_interface-srv:AutoOpen-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AutoOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoOpen-request>) ostream)
  "Serializes a message object of type '<AutoOpen-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoOpen-request>) istream)
  "Deserializes a message object of type '<AutoOpen-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoOpen-request>)))
  "Returns string type for a service object of type '<AutoOpen-request>"
  "graspit_interface/AutoOpenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoOpen-request)))
  "Returns string type for a service object of type 'AutoOpen-request"
  "graspit_interface/AutoOpenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoOpen-request>)))
  "Returns md5sum for a message object of type '<AutoOpen-request>"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoOpen-request)))
  "Returns md5sum for a message object of type 'AutoOpen-request"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoOpen-request>)))
  "Returns full string definition for message of type '<AutoOpen-request>"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoOpen-request)))
  "Returns full string definition for message of type 'AutoOpen-request"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoOpen-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoOpen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoOpen-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude AutoOpen-response.msg.html

(cl:defclass <AutoOpen-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoOpen-response (<AutoOpen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoOpen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoOpen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<AutoOpen-response> is deprecated: use graspit_interface-srv:AutoOpen-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AutoOpen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoOpen-response>)))
    "Constants for message type '<AutoOpen-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoOpen-response)))
    "Constants for message type 'AutoOpen-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoOpen-response>) ostream)
  "Serializes a message object of type '<AutoOpen-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoOpen-response>) istream)
  "Deserializes a message object of type '<AutoOpen-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoOpen-response>)))
  "Returns string type for a service object of type '<AutoOpen-response>"
  "graspit_interface/AutoOpenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoOpen-response)))
  "Returns string type for a service object of type 'AutoOpen-response"
  "graspit_interface/AutoOpenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoOpen-response>)))
  "Returns md5sum for a message object of type '<AutoOpen-response>"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoOpen-response)))
  "Returns md5sum for a message object of type 'AutoOpen-response"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoOpen-response>)))
  "Returns full string definition for message of type '<AutoOpen-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoOpen-response)))
  "Returns full string definition for message of type 'AutoOpen-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoOpen-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoOpen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoOpen-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutoOpen)))
  'AutoOpen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutoOpen)))
  'AutoOpen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoOpen)))
  "Returns string type for a service object of type '<AutoOpen>"
  "graspit_interface/AutoOpen")