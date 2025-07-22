; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude DynamicAutoGraspComplete-request.msg.html

(cl:defclass <DynamicAutoGraspComplete-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass DynamicAutoGraspComplete-request (<DynamicAutoGraspComplete-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicAutoGraspComplete-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicAutoGraspComplete-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<DynamicAutoGraspComplete-request> is deprecated: use graspit_interface-srv:DynamicAutoGraspComplete-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DynamicAutoGraspComplete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicAutoGraspComplete-request>) ostream)
  "Serializes a message object of type '<DynamicAutoGraspComplete-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicAutoGraspComplete-request>) istream)
  "Deserializes a message object of type '<DynamicAutoGraspComplete-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicAutoGraspComplete-request>)))
  "Returns string type for a service object of type '<DynamicAutoGraspComplete-request>"
  "graspit_interface/DynamicAutoGraspCompleteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicAutoGraspComplete-request)))
  "Returns string type for a service object of type 'DynamicAutoGraspComplete-request"
  "graspit_interface/DynamicAutoGraspCompleteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicAutoGraspComplete-request>)))
  "Returns md5sum for a message object of type '<DynamicAutoGraspComplete-request>"
  "3b4169fde884df82dd4cd2e7af7cbd44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicAutoGraspComplete-request)))
  "Returns md5sum for a message object of type 'DynamicAutoGraspComplete-request"
  "3b4169fde884df82dd4cd2e7af7cbd44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicAutoGraspComplete-request>)))
  "Returns full string definition for message of type '<DynamicAutoGraspComplete-request>"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicAutoGraspComplete-request)))
  "Returns full string definition for message of type 'DynamicAutoGraspComplete-request"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicAutoGraspComplete-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicAutoGraspComplete-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicAutoGraspComplete-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude DynamicAutoGraspComplete-response.msg.html

(cl:defclass <DynamicAutoGraspComplete-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (GraspComplete
    :reader GraspComplete
    :initarg :GraspComplete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DynamicAutoGraspComplete-response (<DynamicAutoGraspComplete-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicAutoGraspComplete-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicAutoGraspComplete-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<DynamicAutoGraspComplete-response> is deprecated: use graspit_interface-srv:DynamicAutoGraspComplete-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DynamicAutoGraspComplete-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'GraspComplete-val :lambda-list '(m))
(cl:defmethod GraspComplete-val ((m <DynamicAutoGraspComplete-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:GraspComplete-val is deprecated.  Use graspit_interface-srv:GraspComplete instead.")
  (GraspComplete m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DynamicAutoGraspComplete-response>)))
    "Constants for message type '<DynamicAutoGraspComplete-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DynamicAutoGraspComplete-response)))
    "Constants for message type 'DynamicAutoGraspComplete-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicAutoGraspComplete-response>) ostream)
  "Serializes a message object of type '<DynamicAutoGraspComplete-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'GraspComplete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicAutoGraspComplete-response>) istream)
  "Deserializes a message object of type '<DynamicAutoGraspComplete-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GraspComplete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicAutoGraspComplete-response>)))
  "Returns string type for a service object of type '<DynamicAutoGraspComplete-response>"
  "graspit_interface/DynamicAutoGraspCompleteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicAutoGraspComplete-response)))
  "Returns string type for a service object of type 'DynamicAutoGraspComplete-response"
  "graspit_interface/DynamicAutoGraspCompleteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicAutoGraspComplete-response>)))
  "Returns md5sum for a message object of type '<DynamicAutoGraspComplete-response>"
  "3b4169fde884df82dd4cd2e7af7cbd44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicAutoGraspComplete-response)))
  "Returns md5sum for a message object of type 'DynamicAutoGraspComplete-response"
  "3b4169fde884df82dd4cd2e7af7cbd44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicAutoGraspComplete-response>)))
  "Returns full string definition for message of type '<DynamicAutoGraspComplete-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%bool GraspComplete~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicAutoGraspComplete-response)))
  "Returns full string definition for message of type 'DynamicAutoGraspComplete-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%bool GraspComplete~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicAutoGraspComplete-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicAutoGraspComplete-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicAutoGraspComplete-response
    (cl:cons ':result (result msg))
    (cl:cons ':GraspComplete (GraspComplete msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DynamicAutoGraspComplete)))
  'DynamicAutoGraspComplete-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DynamicAutoGraspComplete)))
  'DynamicAutoGraspComplete-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicAutoGraspComplete)))
  "Returns string type for a service object of type '<DynamicAutoGraspComplete>"
  "graspit_interface/DynamicAutoGraspComplete")