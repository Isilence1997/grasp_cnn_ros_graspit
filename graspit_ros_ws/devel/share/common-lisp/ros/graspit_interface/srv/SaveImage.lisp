; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude SaveImage-request.msg.html

(cl:defclass <SaveImage-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass SaveImage-request (<SaveImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SaveImage-request> is deprecated: use graspit_interface-srv:SaveImage-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SaveImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:filename-val is deprecated.  Use graspit_interface-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveImage-request>) ostream)
  "Serializes a message object of type '<SaveImage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveImage-request>) istream)
  "Deserializes a message object of type '<SaveImage-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveImage-request>)))
  "Returns string type for a service object of type '<SaveImage-request>"
  "graspit_interface/SaveImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveImage-request)))
  "Returns string type for a service object of type 'SaveImage-request"
  "graspit_interface/SaveImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveImage-request>)))
  "Returns md5sum for a message object of type '<SaveImage-request>"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveImage-request)))
  "Returns md5sum for a message object of type 'SaveImage-request"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveImage-request>)))
  "Returns full string definition for message of type '<SaveImage-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveImage-request)))
  "Returns full string definition for message of type 'SaveImage-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveImage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveImage-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SaveImage-response.msg.html

(cl:defclass <SaveImage-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SaveImage-response (<SaveImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SaveImage-response> is deprecated: use graspit_interface-srv:SaveImage-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SaveImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SaveImage-response>)))
    "Constants for message type '<SaveImage-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SaveImage-response)))
    "Constants for message type 'SaveImage-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveImage-response>) ostream)
  "Serializes a message object of type '<SaveImage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveImage-response>) istream)
  "Deserializes a message object of type '<SaveImage-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveImage-response>)))
  "Returns string type for a service object of type '<SaveImage-response>"
  "graspit_interface/SaveImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveImage-response)))
  "Returns string type for a service object of type 'SaveImage-response"
  "graspit_interface/SaveImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveImage-response>)))
  "Returns md5sum for a message object of type '<SaveImage-response>"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveImage-response)))
  "Returns md5sum for a message object of type 'SaveImage-response"
  "285e9fabd629899a63d0043517ce4bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveImage-response>)))
  "Returns full string definition for message of type '<SaveImage-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveImage-response)))
  "Returns full string definition for message of type 'SaveImage-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveImage-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveImage-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveImage)))
  'SaveImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveImage)))
  'SaveImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveImage)))
  "Returns string type for a service object of type '<SaveImage>"
  "graspit_interface/SaveImage")