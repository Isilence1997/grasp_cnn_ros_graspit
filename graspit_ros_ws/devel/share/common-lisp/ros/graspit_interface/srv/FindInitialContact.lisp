; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude FindInitialContact-request.msg.html

(cl:defclass <FindInitialContact-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (moveDist
    :reader moveDist
    :initarg :moveDist
    :type cl:float
    :initform 0.0))
)

(cl:defclass FindInitialContact-request (<FindInitialContact-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindInitialContact-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindInitialContact-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<FindInitialContact-request> is deprecated: use graspit_interface-srv:FindInitialContact-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FindInitialContact-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'moveDist-val :lambda-list '(m))
(cl:defmethod moveDist-val ((m <FindInitialContact-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:moveDist-val is deprecated.  Use graspit_interface-srv:moveDist instead.")
  (moveDist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindInitialContact-request>) ostream)
  "Serializes a message object of type '<FindInitialContact-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'moveDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindInitialContact-request>) istream)
  "Deserializes a message object of type '<FindInitialContact-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindInitialContact-request>)))
  "Returns string type for a service object of type '<FindInitialContact-request>"
  "graspit_interface/FindInitialContactRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindInitialContact-request)))
  "Returns string type for a service object of type 'FindInitialContact-request"
  "graspit_interface/FindInitialContactRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindInitialContact-request>)))
  "Returns md5sum for a message object of type '<FindInitialContact-request>"
  "fdb119775186f8935d45786efba6c6a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindInitialContact-request)))
  "Returns md5sum for a message object of type 'FindInitialContact-request"
  "fdb119775186f8935d45786efba6c6a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindInitialContact-request>)))
  "Returns full string definition for message of type '<FindInitialContact-request>"
  (cl:format cl:nil "uint32 id~%float64 moveDist~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindInitialContact-request)))
  "Returns full string definition for message of type 'FindInitialContact-request"
  (cl:format cl:nil "uint32 id~%float64 moveDist~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindInitialContact-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindInitialContact-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FindInitialContact-request
    (cl:cons ':id (id msg))
    (cl:cons ':moveDist (moveDist msg))
))
;//! \htmlinclude FindInitialContact-response.msg.html

(cl:defclass <FindInitialContact-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FindInitialContact-response (<FindInitialContact-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindInitialContact-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindInitialContact-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<FindInitialContact-response> is deprecated: use graspit_interface-srv:FindInitialContact-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FindInitialContact-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FindInitialContact-response>)))
    "Constants for message type '<FindInitialContact-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FindInitialContact-response)))
    "Constants for message type 'FindInitialContact-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindInitialContact-response>) ostream)
  "Serializes a message object of type '<FindInitialContact-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindInitialContact-response>) istream)
  "Deserializes a message object of type '<FindInitialContact-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindInitialContact-response>)))
  "Returns string type for a service object of type '<FindInitialContact-response>"
  "graspit_interface/FindInitialContactResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindInitialContact-response)))
  "Returns string type for a service object of type 'FindInitialContact-response"
  "graspit_interface/FindInitialContactResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindInitialContact-response>)))
  "Returns md5sum for a message object of type '<FindInitialContact-response>"
  "fdb119775186f8935d45786efba6c6a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindInitialContact-response)))
  "Returns md5sum for a message object of type 'FindInitialContact-response"
  "fdb119775186f8935d45786efba6c6a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindInitialContact-response>)))
  "Returns full string definition for message of type '<FindInitialContact-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindInitialContact-response)))
  "Returns full string definition for message of type 'FindInitialContact-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindInitialContact-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindInitialContact-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FindInitialContact-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FindInitialContact)))
  'FindInitialContact-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FindInitialContact)))
  'FindInitialContact-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindInitialContact)))
  "Returns string type for a service object of type '<FindInitialContact>"
  "graspit_interface/FindInitialContact")