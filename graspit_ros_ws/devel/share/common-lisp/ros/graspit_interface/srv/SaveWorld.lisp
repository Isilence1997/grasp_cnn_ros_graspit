; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude SaveWorld-request.msg.html

(cl:defclass <SaveWorld-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass SaveWorld-request (<SaveWorld-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveWorld-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveWorld-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SaveWorld-request> is deprecated: use graspit_interface-srv:SaveWorld-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SaveWorld-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:filename-val is deprecated.  Use graspit_interface-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveWorld-request>) ostream)
  "Serializes a message object of type '<SaveWorld-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveWorld-request>) istream)
  "Deserializes a message object of type '<SaveWorld-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveWorld-request>)))
  "Returns string type for a service object of type '<SaveWorld-request>"
  "graspit_interface/SaveWorldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveWorld-request)))
  "Returns string type for a service object of type 'SaveWorld-request"
  "graspit_interface/SaveWorldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveWorld-request>)))
  "Returns md5sum for a message object of type '<SaveWorld-request>"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveWorld-request)))
  "Returns md5sum for a message object of type 'SaveWorld-request"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveWorld-request>)))
  "Returns full string definition for message of type '<SaveWorld-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveWorld-request)))
  "Returns full string definition for message of type 'SaveWorld-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveWorld-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveWorld-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveWorld-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SaveWorld-response.msg.html

(cl:defclass <SaveWorld-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SaveWorld-response (<SaveWorld-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveWorld-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveWorld-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SaveWorld-response> is deprecated: use graspit_interface-srv:SaveWorld-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SaveWorld-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SaveWorld-response>)))
    "Constants for message type '<SaveWorld-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SaveWorld-response)))
    "Constants for message type 'SaveWorld-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveWorld-response>) ostream)
  "Serializes a message object of type '<SaveWorld-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveWorld-response>) istream)
  "Deserializes a message object of type '<SaveWorld-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveWorld-response>)))
  "Returns string type for a service object of type '<SaveWorld-response>"
  "graspit_interface/SaveWorldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveWorld-response)))
  "Returns string type for a service object of type 'SaveWorld-response"
  "graspit_interface/SaveWorldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveWorld-response>)))
  "Returns md5sum for a message object of type '<SaveWorld-response>"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveWorld-response)))
  "Returns md5sum for a message object of type 'SaveWorld-response"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveWorld-response>)))
  "Returns full string definition for message of type '<SaveWorld-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveWorld-response)))
  "Returns full string definition for message of type 'SaveWorld-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveWorld-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveWorld-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveWorld-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveWorld)))
  'SaveWorld-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveWorld)))
  'SaveWorld-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveWorld)))
  "Returns string type for a service object of type '<SaveWorld>"
  "graspit_interface/SaveWorld")