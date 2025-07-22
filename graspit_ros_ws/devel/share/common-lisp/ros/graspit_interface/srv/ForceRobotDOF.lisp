; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ForceRobotDOF-request.msg.html

(cl:defclass <ForceRobotDOF-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (dofs
    :reader dofs
    :initarg :dofs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ForceRobotDOF-request (<ForceRobotDOF-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceRobotDOF-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceRobotDOF-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ForceRobotDOF-request> is deprecated: use graspit_interface-srv:ForceRobotDOF-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ForceRobotDOF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'dofs-val :lambda-list '(m))
(cl:defmethod dofs-val ((m <ForceRobotDOF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:dofs-val is deprecated.  Use graspit_interface-srv:dofs instead.")
  (dofs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceRobotDOF-request>) ostream)
  "Serializes a message object of type '<ForceRobotDOF-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dofs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'dofs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceRobotDOF-request>) istream)
  "Deserializes a message object of type '<ForceRobotDOF-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dofs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dofs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceRobotDOF-request>)))
  "Returns string type for a service object of type '<ForceRobotDOF-request>"
  "graspit_interface/ForceRobotDOFRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceRobotDOF-request)))
  "Returns string type for a service object of type 'ForceRobotDOF-request"
  "graspit_interface/ForceRobotDOFRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceRobotDOF-request>)))
  "Returns md5sum for a message object of type '<ForceRobotDOF-request>"
  "e52a3b0acd0c439a10551b619976d996")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceRobotDOF-request)))
  "Returns md5sum for a message object of type 'ForceRobotDOF-request"
  "e52a3b0acd0c439a10551b619976d996")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceRobotDOF-request>)))
  "Returns full string definition for message of type '<ForceRobotDOF-request>"
  (cl:format cl:nil "uint32 id~%float64[] dofs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceRobotDOF-request)))
  "Returns full string definition for message of type 'ForceRobotDOF-request"
  (cl:format cl:nil "uint32 id~%float64[] dofs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceRobotDOF-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dofs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceRobotDOF-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceRobotDOF-request
    (cl:cons ':id (id msg))
    (cl:cons ':dofs (dofs msg))
))
;//! \htmlinclude ForceRobotDOF-response.msg.html

(cl:defclass <ForceRobotDOF-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ForceRobotDOF-response (<ForceRobotDOF-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceRobotDOF-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceRobotDOF-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ForceRobotDOF-response> is deprecated: use graspit_interface-srv:ForceRobotDOF-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ForceRobotDOF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ForceRobotDOF-response>)))
    "Constants for message type '<ForceRobotDOF-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_DOF_OUT_OF_RANGE . 2)
    (:RESULT_DOF_COUNT_MISMATCH . 3)
    (:RESULT_DYNAMICS_MODE_ENABLED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ForceRobotDOF-response)))
    "Constants for message type 'ForceRobotDOF-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_DOF_OUT_OF_RANGE . 2)
    (:RESULT_DOF_COUNT_MISMATCH . 3)
    (:RESULT_DYNAMICS_MODE_ENABLED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceRobotDOF-response>) ostream)
  "Serializes a message object of type '<ForceRobotDOF-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceRobotDOF-response>) istream)
  "Deserializes a message object of type '<ForceRobotDOF-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceRobotDOF-response>)))
  "Returns string type for a service object of type '<ForceRobotDOF-response>"
  "graspit_interface/ForceRobotDOFResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceRobotDOF-response)))
  "Returns string type for a service object of type 'ForceRobotDOF-response"
  "graspit_interface/ForceRobotDOFResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceRobotDOF-response>)))
  "Returns md5sum for a message object of type '<ForceRobotDOF-response>"
  "e52a3b0acd0c439a10551b619976d996")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceRobotDOF-response)))
  "Returns md5sum for a message object of type 'ForceRobotDOF-response"
  "e52a3b0acd0c439a10551b619976d996")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceRobotDOF-response>)))
  "Returns full string definition for message of type '<ForceRobotDOF-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS               = 0~%uint8 RESULT_INVALID_ID            = 1~%uint8 RESULT_DOF_OUT_OF_RANGE      = 2~%uint8 RESULT_DOF_COUNT_MISMATCH    = 3~%uint8 RESULT_DYNAMICS_MODE_ENABLED = 4~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceRobotDOF-response)))
  "Returns full string definition for message of type 'ForceRobotDOF-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS               = 0~%uint8 RESULT_INVALID_ID            = 1~%uint8 RESULT_DOF_OUT_OF_RANGE      = 2~%uint8 RESULT_DOF_COUNT_MISMATCH    = 3~%uint8 RESULT_DYNAMICS_MODE_ENABLED = 4~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceRobotDOF-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceRobotDOF-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceRobotDOF-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ForceRobotDOF)))
  'ForceRobotDOF-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ForceRobotDOF)))
  'ForceRobotDOF-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceRobotDOF)))
  "Returns string type for a service object of type '<ForceRobotDOF>"
  "graspit_interface/ForceRobotDOF")