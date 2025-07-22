; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ComputeQuality-request.msg.html

(cl:defclass <ComputeQuality-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass ComputeQuality-request (<ComputeQuality-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeQuality-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeQuality-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ComputeQuality-request> is deprecated: use graspit_interface-srv:ComputeQuality-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ComputeQuality-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeQuality-request>) ostream)
  "Serializes a message object of type '<ComputeQuality-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeQuality-request>) istream)
  "Deserializes a message object of type '<ComputeQuality-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeQuality-request>)))
  "Returns string type for a service object of type '<ComputeQuality-request>"
  "graspit_interface/ComputeQualityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeQuality-request)))
  "Returns string type for a service object of type 'ComputeQuality-request"
  "graspit_interface/ComputeQualityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeQuality-request>)))
  "Returns md5sum for a message object of type '<ComputeQuality-request>"
  "3ac746f2f68fcf449fe5d3aa24815bd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeQuality-request)))
  "Returns md5sum for a message object of type 'ComputeQuality-request"
  "3ac746f2f68fcf449fe5d3aa24815bd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeQuality-request>)))
  "Returns full string definition for message of type '<ComputeQuality-request>"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeQuality-request)))
  "Returns full string definition for message of type 'ComputeQuality-request"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeQuality-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeQuality-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeQuality-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude ComputeQuality-response.msg.html

(cl:defclass <ComputeQuality-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (volume
    :reader volume
    :initarg :volume
    :type cl:float
    :initform 0.0)
   (epsilon
    :reader epsilon
    :initarg :epsilon
    :type cl:float
    :initform 0.0))
)

(cl:defclass ComputeQuality-response (<ComputeQuality-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeQuality-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeQuality-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ComputeQuality-response> is deprecated: use graspit_interface-srv:ComputeQuality-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ComputeQuality-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'volume-val :lambda-list '(m))
(cl:defmethod volume-val ((m <ComputeQuality-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:volume-val is deprecated.  Use graspit_interface-srv:volume instead.")
  (volume m))

(cl:ensure-generic-function 'epsilon-val :lambda-list '(m))
(cl:defmethod epsilon-val ((m <ComputeQuality-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:epsilon-val is deprecated.  Use graspit_interface-srv:epsilon instead.")
  (epsilon m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ComputeQuality-response>)))
    "Constants for message type '<ComputeQuality-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_COLLISION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ComputeQuality-response)))
    "Constants for message type 'ComputeQuality-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_COLLISION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeQuality-response>) ostream)
  "Serializes a message object of type '<ComputeQuality-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'volume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'epsilon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeQuality-response>) istream)
  "Deserializes a message object of type '<ComputeQuality-response>"
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
    (cl:setf (cl:slot-value msg 'volume) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'epsilon) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeQuality-response>)))
  "Returns string type for a service object of type '<ComputeQuality-response>"
  "graspit_interface/ComputeQualityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeQuality-response)))
  "Returns string type for a service object of type 'ComputeQuality-response"
  "graspit_interface/ComputeQualityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeQuality-response>)))
  "Returns md5sum for a message object of type '<ComputeQuality-response>"
  "3ac746f2f68fcf449fe5d3aa24815bd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeQuality-response)))
  "Returns md5sum for a message object of type 'ComputeQuality-response"
  "3ac746f2f68fcf449fe5d3aa24815bd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeQuality-response>)))
  "Returns full string definition for message of type '<ComputeQuality-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%uint8 RESULT_COLLISION  = 2~%~%uint8 result~%~%float64 volume~%float64 epsilon~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeQuality-response)))
  "Returns full string definition for message of type 'ComputeQuality-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%uint8 RESULT_COLLISION  = 2~%~%uint8 result~%~%float64 volume~%float64 epsilon~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeQuality-response>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeQuality-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeQuality-response
    (cl:cons ':result (result msg))
    (cl:cons ':volume (volume msg))
    (cl:cons ':epsilon (epsilon msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComputeQuality)))
  'ComputeQuality-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComputeQuality)))
  'ComputeQuality-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeQuality)))
  "Returns string type for a service object of type '<ComputeQuality>"
  "graspit_interface/ComputeQuality")