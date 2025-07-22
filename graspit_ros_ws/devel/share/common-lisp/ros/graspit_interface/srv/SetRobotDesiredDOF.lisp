; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude SetRobotDesiredDOF-request.msg.html

(cl:defclass <SetRobotDesiredDOF-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (dofs
    :reader dofs
    :initarg :dofs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (dof_velocities
    :reader dof_velocities
    :initarg :dof_velocities
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetRobotDesiredDOF-request (<SetRobotDesiredDOF-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotDesiredDOF-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotDesiredDOF-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetRobotDesiredDOF-request> is deprecated: use graspit_interface-srv:SetRobotDesiredDOF-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetRobotDesiredDOF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'dofs-val :lambda-list '(m))
(cl:defmethod dofs-val ((m <SetRobotDesiredDOF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:dofs-val is deprecated.  Use graspit_interface-srv:dofs instead.")
  (dofs m))

(cl:ensure-generic-function 'dof_velocities-val :lambda-list '(m))
(cl:defmethod dof_velocities-val ((m <SetRobotDesiredDOF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:dof_velocities-val is deprecated.  Use graspit_interface-srv:dof_velocities instead.")
  (dof_velocities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotDesiredDOF-request>) ostream)
  "Serializes a message object of type '<SetRobotDesiredDOF-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dof_velocities))))
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
   (cl:slot-value msg 'dof_velocities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotDesiredDOF-request>) istream)
  "Deserializes a message object of type '<SetRobotDesiredDOF-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dof_velocities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dof_velocities)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotDesiredDOF-request>)))
  "Returns string type for a service object of type '<SetRobotDesiredDOF-request>"
  "graspit_interface/SetRobotDesiredDOFRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotDesiredDOF-request)))
  "Returns string type for a service object of type 'SetRobotDesiredDOF-request"
  "graspit_interface/SetRobotDesiredDOFRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotDesiredDOF-request>)))
  "Returns md5sum for a message object of type '<SetRobotDesiredDOF-request>"
  "9c4727cc016ebb1f76651d8e34c53cc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotDesiredDOF-request)))
  "Returns md5sum for a message object of type 'SetRobotDesiredDOF-request"
  "9c4727cc016ebb1f76651d8e34c53cc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotDesiredDOF-request>)))
  "Returns full string definition for message of type '<SetRobotDesiredDOF-request>"
  (cl:format cl:nil "uint32 id~%float64[] dofs~%float64[] dof_velocities~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotDesiredDOF-request)))
  "Returns full string definition for message of type 'SetRobotDesiredDOF-request"
  (cl:format cl:nil "uint32 id~%float64[] dofs~%float64[] dof_velocities~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotDesiredDOF-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dofs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dof_velocities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotDesiredDOF-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotDesiredDOF-request
    (cl:cons ':id (id msg))
    (cl:cons ':dofs (dofs msg))
    (cl:cons ':dof_velocities (dof_velocities msg))
))
;//! \htmlinclude SetRobotDesiredDOF-response.msg.html

(cl:defclass <SetRobotDesiredDOF-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetRobotDesiredDOF-response (<SetRobotDesiredDOF-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotDesiredDOF-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotDesiredDOF-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<SetRobotDesiredDOF-response> is deprecated: use graspit_interface-srv:SetRobotDesiredDOF-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetRobotDesiredDOF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetRobotDesiredDOF-response>)))
    "Constants for message type '<SetRobotDesiredDOF-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_DOF_OUT_OF_RANGE . 2)
    (:RESULT_DOF_COUNT_MISMATCH . 3)
    (:RESULT_DYNAMICS_MODE_DISABLED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetRobotDesiredDOF-response)))
    "Constants for message type 'SetRobotDesiredDOF-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_DOF_OUT_OF_RANGE . 2)
    (:RESULT_DOF_COUNT_MISMATCH . 3)
    (:RESULT_DYNAMICS_MODE_DISABLED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotDesiredDOF-response>) ostream)
  "Serializes a message object of type '<SetRobotDesiredDOF-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotDesiredDOF-response>) istream)
  "Deserializes a message object of type '<SetRobotDesiredDOF-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotDesiredDOF-response>)))
  "Returns string type for a service object of type '<SetRobotDesiredDOF-response>"
  "graspit_interface/SetRobotDesiredDOFResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotDesiredDOF-response)))
  "Returns string type for a service object of type 'SetRobotDesiredDOF-response"
  "graspit_interface/SetRobotDesiredDOFResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotDesiredDOF-response>)))
  "Returns md5sum for a message object of type '<SetRobotDesiredDOF-response>"
  "9c4727cc016ebb1f76651d8e34c53cc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotDesiredDOF-response)))
  "Returns md5sum for a message object of type 'SetRobotDesiredDOF-response"
  "9c4727cc016ebb1f76651d8e34c53cc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotDesiredDOF-response>)))
  "Returns full string definition for message of type '<SetRobotDesiredDOF-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS                = 0~%uint8 RESULT_INVALID_ID             = 1~%uint8 RESULT_DOF_OUT_OF_RANGE       = 2~%uint8 RESULT_DOF_COUNT_MISMATCH     = 3~%uint8 RESULT_DYNAMICS_MODE_DISABLED = 4~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotDesiredDOF-response)))
  "Returns full string definition for message of type 'SetRobotDesiredDOF-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS                = 0~%uint8 RESULT_INVALID_ID             = 1~%uint8 RESULT_DOF_OUT_OF_RANGE       = 2~%uint8 RESULT_DOF_COUNT_MISMATCH     = 3~%uint8 RESULT_DYNAMICS_MODE_DISABLED = 4~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotDesiredDOF-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotDesiredDOF-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotDesiredDOF-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRobotDesiredDOF)))
  'SetRobotDesiredDOF-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRobotDesiredDOF)))
  'SetRobotDesiredDOF-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotDesiredDOF)))
  "Returns string type for a service object of type '<SetRobotDesiredDOF>"
  "graspit_interface/SetRobotDesiredDOF")