; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude MoveDOFToContacts-request.msg.html

(cl:defclass <MoveDOFToContacts-request> (roslisp-msg-protocol:ros-message)
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
   (desired_steps
    :reader desired_steps
    :initarg :desired_steps
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (stopAtContact
    :reader stopAtContact
    :initarg :stopAtContact
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveDOFToContacts-request (<MoveDOFToContacts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveDOFToContacts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveDOFToContacts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<MoveDOFToContacts-request> is deprecated: use graspit_interface-srv:MoveDOFToContacts-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MoveDOFToContacts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'dofs-val :lambda-list '(m))
(cl:defmethod dofs-val ((m <MoveDOFToContacts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:dofs-val is deprecated.  Use graspit_interface-srv:dofs instead.")
  (dofs m))

(cl:ensure-generic-function 'desired_steps-val :lambda-list '(m))
(cl:defmethod desired_steps-val ((m <MoveDOFToContacts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:desired_steps-val is deprecated.  Use graspit_interface-srv:desired_steps instead.")
  (desired_steps m))

(cl:ensure-generic-function 'stopAtContact-val :lambda-list '(m))
(cl:defmethod stopAtContact-val ((m <MoveDOFToContacts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:stopAtContact-val is deprecated.  Use graspit_interface-srv:stopAtContact instead.")
  (stopAtContact m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveDOFToContacts-request>) ostream)
  "Serializes a message object of type '<MoveDOFToContacts-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'desired_steps))))
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
   (cl:slot-value msg 'desired_steps))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stopAtContact) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveDOFToContacts-request>) istream)
  "Deserializes a message object of type '<MoveDOFToContacts-request>"
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
  (cl:setf (cl:slot-value msg 'desired_steps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'desired_steps)))
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
    (cl:setf (cl:slot-value msg 'stopAtContact) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveDOFToContacts-request>)))
  "Returns string type for a service object of type '<MoveDOFToContacts-request>"
  "graspit_interface/MoveDOFToContactsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveDOFToContacts-request)))
  "Returns string type for a service object of type 'MoveDOFToContacts-request"
  "graspit_interface/MoveDOFToContactsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveDOFToContacts-request>)))
  "Returns md5sum for a message object of type '<MoveDOFToContacts-request>"
  "563bb3b4c2532e0267eb65a3fae5aad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveDOFToContacts-request)))
  "Returns md5sum for a message object of type 'MoveDOFToContacts-request"
  "563bb3b4c2532e0267eb65a3fae5aad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveDOFToContacts-request>)))
  "Returns full string definition for message of type '<MoveDOFToContacts-request>"
  (cl:format cl:nil "uint32 id~%float64[] dofs~%float64[] desired_steps~%bool stopAtContact~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveDOFToContacts-request)))
  "Returns full string definition for message of type 'MoveDOFToContacts-request"
  (cl:format cl:nil "uint32 id~%float64[] dofs~%float64[] desired_steps~%bool stopAtContact~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveDOFToContacts-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dofs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'desired_steps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveDOFToContacts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveDOFToContacts-request
    (cl:cons ':id (id msg))
    (cl:cons ':dofs (dofs msg))
    (cl:cons ':desired_steps (desired_steps msg))
    (cl:cons ':stopAtContact (stopAtContact msg))
))
;//! \htmlinclude MoveDOFToContacts-response.msg.html

(cl:defclass <MoveDOFToContacts-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoveDOFToContacts-response (<MoveDOFToContacts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveDOFToContacts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveDOFToContacts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<MoveDOFToContacts-response> is deprecated: use graspit_interface-srv:MoveDOFToContacts-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MoveDOFToContacts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MoveDOFToContacts-response>)))
    "Constants for message type '<MoveDOFToContacts-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_DOF_OUT_OF_RANGE . 2)
    (:RESULT_DOF_COUNT_MISMATCH . 3)
    (:RESULT_DYNAMICS_MODE_ENABLED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MoveDOFToContacts-response)))
    "Constants for message type 'MoveDOFToContacts-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1)
    (:RESULT_DOF_OUT_OF_RANGE . 2)
    (:RESULT_DOF_COUNT_MISMATCH . 3)
    (:RESULT_DYNAMICS_MODE_ENABLED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveDOFToContacts-response>) ostream)
  "Serializes a message object of type '<MoveDOFToContacts-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveDOFToContacts-response>) istream)
  "Deserializes a message object of type '<MoveDOFToContacts-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveDOFToContacts-response>)))
  "Returns string type for a service object of type '<MoveDOFToContacts-response>"
  "graspit_interface/MoveDOFToContactsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveDOFToContacts-response)))
  "Returns string type for a service object of type 'MoveDOFToContacts-response"
  "graspit_interface/MoveDOFToContactsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveDOFToContacts-response>)))
  "Returns md5sum for a message object of type '<MoveDOFToContacts-response>"
  "563bb3b4c2532e0267eb65a3fae5aad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveDOFToContacts-response)))
  "Returns md5sum for a message object of type 'MoveDOFToContacts-response"
  "563bb3b4c2532e0267eb65a3fae5aad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveDOFToContacts-response>)))
  "Returns full string definition for message of type '<MoveDOFToContacts-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS               = 0~%uint8 RESULT_INVALID_ID            = 1~%uint8 RESULT_DOF_OUT_OF_RANGE      = 2~%uint8 RESULT_DOF_COUNT_MISMATCH    = 3~%uint8 RESULT_DYNAMICS_MODE_ENABLED = 4~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveDOFToContacts-response)))
  "Returns full string definition for message of type 'MoveDOFToContacts-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS               = 0~%uint8 RESULT_INVALID_ID            = 1~%uint8 RESULT_DOF_OUT_OF_RANGE      = 2~%uint8 RESULT_DOF_COUNT_MISMATCH    = 3~%uint8 RESULT_DYNAMICS_MODE_ENABLED = 4~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveDOFToContacts-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveDOFToContacts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveDOFToContacts-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveDOFToContacts)))
  'MoveDOFToContacts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveDOFToContacts)))
  'MoveDOFToContacts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveDOFToContacts)))
  "Returns string type for a service object of type '<MoveDOFToContacts>"
  "graspit_interface/MoveDOFToContacts")