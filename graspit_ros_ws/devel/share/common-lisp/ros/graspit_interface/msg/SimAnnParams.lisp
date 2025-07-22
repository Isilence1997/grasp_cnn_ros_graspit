; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude SimAnnParams.msg.html

(cl:defclass <SimAnnParams> (roslisp-msg-protocol:ros-message)
  ((set_custom_params
    :reader set_custom_params
    :initarg :set_custom_params
    :type cl:boolean
    :initform cl:nil)
   (YC
    :reader YC
    :initarg :YC
    :type cl:float
    :initform 0.0)
   (HC
    :reader HC
    :initarg :HC
    :type cl:float
    :initform 0.0)
   (YDIMS
    :reader YDIMS
    :initarg :YDIMS
    :type cl:float
    :initform 0.0)
   (HDIMS
    :reader HDIMS
    :initarg :HDIMS
    :type cl:float
    :initform 0.0)
   (NBR_ADJ
    :reader NBR_ADJ
    :initarg :NBR_ADJ
    :type cl:float
    :initform 0.0)
   (ERR_ADJ
    :reader ERR_ADJ
    :initarg :ERR_ADJ
    :type cl:float
    :initform 0.0)
   (DEF_T0
    :reader DEF_T0
    :initarg :DEF_T0
    :type cl:float
    :initform 0.0)
   (DEF_K0
    :reader DEF_K0
    :initarg :DEF_K0
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimAnnParams (<SimAnnParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimAnnParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimAnnParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<SimAnnParams> is deprecated: use graspit_interface-msg:SimAnnParams instead.")))

(cl:ensure-generic-function 'set_custom_params-val :lambda-list '(m))
(cl:defmethod set_custom_params-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:set_custom_params-val is deprecated.  Use graspit_interface-msg:set_custom_params instead.")
  (set_custom_params m))

(cl:ensure-generic-function 'YC-val :lambda-list '(m))
(cl:defmethod YC-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:YC-val is deprecated.  Use graspit_interface-msg:YC instead.")
  (YC m))

(cl:ensure-generic-function 'HC-val :lambda-list '(m))
(cl:defmethod HC-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:HC-val is deprecated.  Use graspit_interface-msg:HC instead.")
  (HC m))

(cl:ensure-generic-function 'YDIMS-val :lambda-list '(m))
(cl:defmethod YDIMS-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:YDIMS-val is deprecated.  Use graspit_interface-msg:YDIMS instead.")
  (YDIMS m))

(cl:ensure-generic-function 'HDIMS-val :lambda-list '(m))
(cl:defmethod HDIMS-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:HDIMS-val is deprecated.  Use graspit_interface-msg:HDIMS instead.")
  (HDIMS m))

(cl:ensure-generic-function 'NBR_ADJ-val :lambda-list '(m))
(cl:defmethod NBR_ADJ-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:NBR_ADJ-val is deprecated.  Use graspit_interface-msg:NBR_ADJ instead.")
  (NBR_ADJ m))

(cl:ensure-generic-function 'ERR_ADJ-val :lambda-list '(m))
(cl:defmethod ERR_ADJ-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:ERR_ADJ-val is deprecated.  Use graspit_interface-msg:ERR_ADJ instead.")
  (ERR_ADJ m))

(cl:ensure-generic-function 'DEF_T0-val :lambda-list '(m))
(cl:defmethod DEF_T0-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:DEF_T0-val is deprecated.  Use graspit_interface-msg:DEF_T0 instead.")
  (DEF_T0 m))

(cl:ensure-generic-function 'DEF_K0-val :lambda-list '(m))
(cl:defmethod DEF_K0-val ((m <SimAnnParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:DEF_K0-val is deprecated.  Use graspit_interface-msg:DEF_K0 instead.")
  (DEF_K0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimAnnParams>) ostream)
  "Serializes a message object of type '<SimAnnParams>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_custom_params) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'YC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'HC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'YDIMS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'HDIMS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'NBR_ADJ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ERR_ADJ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'DEF_T0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'DEF_K0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimAnnParams>) istream)
  "Deserializes a message object of type '<SimAnnParams>"
    (cl:setf (cl:slot-value msg 'set_custom_params) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YC) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HC) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YDIMS) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HDIMS) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'NBR_ADJ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ERR_ADJ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DEF_T0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DEF_K0) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimAnnParams>)))
  "Returns string type for a message object of type '<SimAnnParams>"
  "graspit_interface/SimAnnParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimAnnParams)))
  "Returns string type for a message object of type 'SimAnnParams"
  "graspit_interface/SimAnnParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimAnnParams>)))
  "Returns md5sum for a message object of type '<SimAnnParams>"
  "f8aaad6aea614225c4b96a7800e09124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimAnnParams)))
  "Returns md5sum for a message object of type 'SimAnnParams"
  "f8aaad6aea614225c4b96a7800e09124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimAnnParams>)))
  "Returns full string definition for message of type '<SimAnnParams>"
  (cl:format cl:nil "~%# flag to switch to custom params defined in this message. If not set, GraspIt's default settings are kept~%bool set_custom_params~%~%~%# //Annealing parameters~%# //! Annealing constant for neighbor generation schedule~%float64 YC	 	#	GraspIt! default: 7.0~%# //! Annealing constant for error acceptance schedule~%float64 HC	 	#	GraspIt! default: 7.0~%# //! Number of dimensions for neighbor generation schedule~%float64 YDIMS	#	GraspIt! default: 8.0~%# //! Number of dimensions for error acceptance schedule~%float64 HDIMS	#	GraspIt! default: 8.0~%# //! Adjust factor for neighbor generation schedule~%float64 NBR_ADJ	#	GraspIt! default: 1.0~%# //! Adjust raw errors reported by states to be in the relevant range of the annealing schedule~%float64 ERR_ADJ	#	GraspIt! default: 1.0e-6~%# //! Starting temperatue~%float64 DEF_T0	#	GraspIt! default: 1e6~%# //! Starting step~%float64 DEF_K0	#	GraspIt! default: 30000~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimAnnParams)))
  "Returns full string definition for message of type 'SimAnnParams"
  (cl:format cl:nil "~%# flag to switch to custom params defined in this message. If not set, GraspIt's default settings are kept~%bool set_custom_params~%~%~%# //Annealing parameters~%# //! Annealing constant for neighbor generation schedule~%float64 YC	 	#	GraspIt! default: 7.0~%# //! Annealing constant for error acceptance schedule~%float64 HC	 	#	GraspIt! default: 7.0~%# //! Number of dimensions for neighbor generation schedule~%float64 YDIMS	#	GraspIt! default: 8.0~%# //! Number of dimensions for error acceptance schedule~%float64 HDIMS	#	GraspIt! default: 8.0~%# //! Adjust factor for neighbor generation schedule~%float64 NBR_ADJ	#	GraspIt! default: 1.0~%# //! Adjust raw errors reported by states to be in the relevant range of the annealing schedule~%float64 ERR_ADJ	#	GraspIt! default: 1.0e-6~%# //! Starting temperatue~%float64 DEF_T0	#	GraspIt! default: 1e6~%# //! Starting step~%float64 DEF_K0	#	GraspIt! default: 30000~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimAnnParams>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimAnnParams>))
  "Converts a ROS message object to a list"
  (cl:list 'SimAnnParams
    (cl:cons ':set_custom_params (set_custom_params msg))
    (cl:cons ':YC (YC msg))
    (cl:cons ':HC (HC msg))
    (cl:cons ':YDIMS (YDIMS msg))
    (cl:cons ':HDIMS (HDIMS msg))
    (cl:cons ':NBR_ADJ (NBR_ADJ msg))
    (cl:cons ':ERR_ADJ (ERR_ADJ msg))
    (cl:cons ':DEF_T0 (DEF_T0 msg))
    (cl:cons ':DEF_K0 (DEF_K0 msg))
))
