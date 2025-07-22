; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ApproachToContact-request.msg.html

(cl:defclass <ApproachToContact-request> (roslisp-msg-protocol:ros-message)
  ((moveDist
    :reader moveDist
    :initarg :moveDist
    :type cl:float
    :initform 0.0)
   (oneStep
    :reader oneStep
    :initarg :oneStep
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass ApproachToContact-request (<ApproachToContact-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApproachToContact-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApproachToContact-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ApproachToContact-request> is deprecated: use graspit_interface-srv:ApproachToContact-request instead.")))

(cl:ensure-generic-function 'moveDist-val :lambda-list '(m))
(cl:defmethod moveDist-val ((m <ApproachToContact-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:moveDist-val is deprecated.  Use graspit_interface-srv:moveDist instead.")
  (moveDist m))

(cl:ensure-generic-function 'oneStep-val :lambda-list '(m))
(cl:defmethod oneStep-val ((m <ApproachToContact-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:oneStep-val is deprecated.  Use graspit_interface-srv:oneStep instead.")
  (oneStep m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ApproachToContact-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApproachToContact-request>) ostream)
  "Serializes a message object of type '<ApproachToContact-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'moveDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'oneStep) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApproachToContact-request>) istream)
  "Deserializes a message object of type '<ApproachToContact-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'moveDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'oneStep) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApproachToContact-request>)))
  "Returns string type for a service object of type '<ApproachToContact-request>"
  "graspit_interface/ApproachToContactRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApproachToContact-request)))
  "Returns string type for a service object of type 'ApproachToContact-request"
  "graspit_interface/ApproachToContactRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApproachToContact-request>)))
  "Returns md5sum for a message object of type '<ApproachToContact-request>"
  "8bedd9e6f36adf22b7fa2df39c3f07e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApproachToContact-request)))
  "Returns md5sum for a message object of type 'ApproachToContact-request"
  "8bedd9e6f36adf22b7fa2df39c3f07e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApproachToContact-request>)))
  "Returns full string definition for message of type '<ApproachToContact-request>"
  (cl:format cl:nil "float64 moveDist~%bool oneStep~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApproachToContact-request)))
  "Returns full string definition for message of type 'ApproachToContact-request"
  (cl:format cl:nil "float64 moveDist~%bool oneStep~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApproachToContact-request>))
  (cl:+ 0
     8
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApproachToContact-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ApproachToContact-request
    (cl:cons ':moveDist (moveDist msg))
    (cl:cons ':oneStep (oneStep msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude ApproachToContact-response.msg.html

(cl:defclass <ApproachToContact-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ApproachToContact-response (<ApproachToContact-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApproachToContact-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApproachToContact-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ApproachToContact-response> is deprecated: use graspit_interface-srv:ApproachToContact-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ApproachToContact-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ApproachToContact-response>)))
    "Constants for message type '<ApproachToContact-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ApproachToContact-response)))
    "Constants for message type 'ApproachToContact-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApproachToContact-response>) ostream)
  "Serializes a message object of type '<ApproachToContact-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApproachToContact-response>) istream)
  "Deserializes a message object of type '<ApproachToContact-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApproachToContact-response>)))
  "Returns string type for a service object of type '<ApproachToContact-response>"
  "graspit_interface/ApproachToContactResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApproachToContact-response)))
  "Returns string type for a service object of type 'ApproachToContact-response"
  "graspit_interface/ApproachToContactResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApproachToContact-response>)))
  "Returns md5sum for a message object of type '<ApproachToContact-response>"
  "8bedd9e6f36adf22b7fa2df39c3f07e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApproachToContact-response)))
  "Returns md5sum for a message object of type 'ApproachToContact-response"
  "8bedd9e6f36adf22b7fa2df39c3f07e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApproachToContact-response>)))
  "Returns full string definition for message of type '<ApproachToContact-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApproachToContact-response)))
  "Returns full string definition for message of type 'ApproachToContact-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApproachToContact-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApproachToContact-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ApproachToContact-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ApproachToContact)))
  'ApproachToContact-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ApproachToContact)))
  'ApproachToContact-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApproachToContact)))
  "Returns string type for a service object of type '<ApproachToContact>"
  "graspit_interface/ApproachToContact")