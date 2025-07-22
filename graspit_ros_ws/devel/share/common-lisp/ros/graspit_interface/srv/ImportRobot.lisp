; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ImportRobot-request.msg.html

(cl:defclass <ImportRobot-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ImportRobot-request (<ImportRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImportRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImportRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ImportRobot-request> is deprecated: use graspit_interface-srv:ImportRobot-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <ImportRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:filename-val is deprecated.  Use graspit_interface-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ImportRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:pose-val is deprecated.  Use graspit_interface-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImportRobot-request>) ostream)
  "Serializes a message object of type '<ImportRobot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImportRobot-request>) istream)
  "Deserializes a message object of type '<ImportRobot-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImportRobot-request>)))
  "Returns string type for a service object of type '<ImportRobot-request>"
  "graspit_interface/ImportRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImportRobot-request)))
  "Returns string type for a service object of type 'ImportRobot-request"
  "graspit_interface/ImportRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImportRobot-request>)))
  "Returns md5sum for a message object of type '<ImportRobot-request>"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImportRobot-request)))
  "Returns md5sum for a message object of type 'ImportRobot-request"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImportRobot-request>)))
  "Returns full string definition for message of type '<ImportRobot-request>"
  (cl:format cl:nil "string filename~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImportRobot-request)))
  "Returns full string definition for message of type 'ImportRobot-request"
  (cl:format cl:nil "string filename~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImportRobot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImportRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImportRobot-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude ImportRobot-response.msg.html

(cl:defclass <ImportRobot-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ImportRobot-response (<ImportRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImportRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImportRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ImportRobot-response> is deprecated: use graspit_interface-srv:ImportRobot-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ImportRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ImportRobot-response>)))
    "Constants for message type '<ImportRobot-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ImportRobot-response)))
    "Constants for message type 'ImportRobot-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImportRobot-response>) ostream)
  "Serializes a message object of type '<ImportRobot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImportRobot-response>) istream)
  "Deserializes a message object of type '<ImportRobot-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImportRobot-response>)))
  "Returns string type for a service object of type '<ImportRobot-response>"
  "graspit_interface/ImportRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImportRobot-response)))
  "Returns string type for a service object of type 'ImportRobot-response"
  "graspit_interface/ImportRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImportRobot-response>)))
  "Returns md5sum for a message object of type '<ImportRobot-response>"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImportRobot-response)))
  "Returns md5sum for a message object of type 'ImportRobot-response"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImportRobot-response>)))
  "Returns full string definition for message of type '<ImportRobot-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImportRobot-response)))
  "Returns full string definition for message of type 'ImportRobot-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImportRobot-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImportRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImportRobot-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImportRobot)))
  'ImportRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImportRobot)))
  'ImportRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImportRobot)))
  "Returns string type for a service object of type '<ImportRobot>"
  "graspit_interface/ImportRobot")