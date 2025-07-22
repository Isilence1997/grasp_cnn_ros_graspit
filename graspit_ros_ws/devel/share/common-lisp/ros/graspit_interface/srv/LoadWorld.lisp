; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude LoadWorld-request.msg.html

(cl:defclass <LoadWorld-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass LoadWorld-request (<LoadWorld-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadWorld-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadWorld-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<LoadWorld-request> is deprecated: use graspit_interface-srv:LoadWorld-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <LoadWorld-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:filename-val is deprecated.  Use graspit_interface-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadWorld-request>) ostream)
  "Serializes a message object of type '<LoadWorld-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadWorld-request>) istream)
  "Deserializes a message object of type '<LoadWorld-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadWorld-request>)))
  "Returns string type for a service object of type '<LoadWorld-request>"
  "graspit_interface/LoadWorldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadWorld-request)))
  "Returns string type for a service object of type 'LoadWorld-request"
  "graspit_interface/LoadWorldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadWorld-request>)))
  "Returns md5sum for a message object of type '<LoadWorld-request>"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadWorld-request)))
  "Returns md5sum for a message object of type 'LoadWorld-request"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadWorld-request>)))
  "Returns full string definition for message of type '<LoadWorld-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadWorld-request)))
  "Returns full string definition for message of type 'LoadWorld-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadWorld-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadWorld-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadWorld-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude LoadWorld-response.msg.html

(cl:defclass <LoadWorld-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LoadWorld-response (<LoadWorld-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadWorld-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadWorld-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<LoadWorld-response> is deprecated: use graspit_interface-srv:LoadWorld-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LoadWorld-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LoadWorld-response>)))
    "Constants for message type '<LoadWorld-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LoadWorld-response)))
    "Constants for message type 'LoadWorld-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadWorld-response>) ostream)
  "Serializes a message object of type '<LoadWorld-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadWorld-response>) istream)
  "Deserializes a message object of type '<LoadWorld-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadWorld-response>)))
  "Returns string type for a service object of type '<LoadWorld-response>"
  "graspit_interface/LoadWorldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadWorld-response)))
  "Returns string type for a service object of type 'LoadWorld-response"
  "graspit_interface/LoadWorldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadWorld-response>)))
  "Returns md5sum for a message object of type '<LoadWorld-response>"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadWorld-response)))
  "Returns md5sum for a message object of type 'LoadWorld-response"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadWorld-response>)))
  "Returns full string definition for message of type '<LoadWorld-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadWorld-response)))
  "Returns full string definition for message of type 'LoadWorld-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadWorld-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadWorld-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadWorld-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadWorld)))
  'LoadWorld-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadWorld)))
  'LoadWorld-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadWorld)))
  "Returns string type for a service object of type '<LoadWorld>"
  "graspit_interface/LoadWorld")