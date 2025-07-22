; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude AutoGrasp-request.msg.html

(cl:defclass <AutoGrasp-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass AutoGrasp-request (<AutoGrasp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoGrasp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoGrasp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<AutoGrasp-request> is deprecated: use graspit_interface-srv:AutoGrasp-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AutoGrasp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoGrasp-request>) ostream)
  "Serializes a message object of type '<AutoGrasp-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoGrasp-request>) istream)
  "Deserializes a message object of type '<AutoGrasp-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoGrasp-request>)))
  "Returns string type for a service object of type '<AutoGrasp-request>"
  "graspit_interface/AutoGraspRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoGrasp-request)))
  "Returns string type for a service object of type 'AutoGrasp-request"
  "graspit_interface/AutoGraspRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoGrasp-request>)))
  "Returns md5sum for a message object of type '<AutoGrasp-request>"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoGrasp-request)))
  "Returns md5sum for a message object of type 'AutoGrasp-request"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoGrasp-request>)))
  "Returns full string definition for message of type '<AutoGrasp-request>"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoGrasp-request)))
  "Returns full string definition for message of type 'AutoGrasp-request"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoGrasp-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoGrasp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoGrasp-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude AutoGrasp-response.msg.html

(cl:defclass <AutoGrasp-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoGrasp-response (<AutoGrasp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoGrasp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoGrasp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<AutoGrasp-response> is deprecated: use graspit_interface-srv:AutoGrasp-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AutoGrasp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoGrasp-response>)))
    "Constants for message type '<AutoGrasp-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoGrasp-response)))
    "Constants for message type 'AutoGrasp-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoGrasp-response>) ostream)
  "Serializes a message object of type '<AutoGrasp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoGrasp-response>) istream)
  "Deserializes a message object of type '<AutoGrasp-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoGrasp-response>)))
  "Returns string type for a service object of type '<AutoGrasp-response>"
  "graspit_interface/AutoGraspResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoGrasp-response)))
  "Returns string type for a service object of type 'AutoGrasp-response"
  "graspit_interface/AutoGraspResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoGrasp-response>)))
  "Returns md5sum for a message object of type '<AutoGrasp-response>"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoGrasp-response)))
  "Returns md5sum for a message object of type 'AutoGrasp-response"
  "cbd9d726d191ae6a9b05b66d9cffaf54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoGrasp-response>)))
  "Returns full string definition for message of type '<AutoGrasp-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoGrasp-response)))
  "Returns full string definition for message of type 'AutoGrasp-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoGrasp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoGrasp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoGrasp-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutoGrasp)))
  'AutoGrasp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutoGrasp)))
  'AutoGrasp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoGrasp)))
  "Returns string type for a service object of type '<AutoGrasp>"
  "graspit_interface/AutoGrasp")