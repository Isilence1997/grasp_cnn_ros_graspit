; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude ImportObstacle-request.msg.html

(cl:defclass <ImportObstacle-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ImportObstacle-request (<ImportObstacle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImportObstacle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImportObstacle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ImportObstacle-request> is deprecated: use graspit_interface-srv:ImportObstacle-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <ImportObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:filename-val is deprecated.  Use graspit_interface-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ImportObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:pose-val is deprecated.  Use graspit_interface-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImportObstacle-request>) ostream)
  "Serializes a message object of type '<ImportObstacle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImportObstacle-request>) istream)
  "Deserializes a message object of type '<ImportObstacle-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImportObstacle-request>)))
  "Returns string type for a service object of type '<ImportObstacle-request>"
  "graspit_interface/ImportObstacleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImportObstacle-request)))
  "Returns string type for a service object of type 'ImportObstacle-request"
  "graspit_interface/ImportObstacleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImportObstacle-request>)))
  "Returns md5sum for a message object of type '<ImportObstacle-request>"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImportObstacle-request)))
  "Returns md5sum for a message object of type 'ImportObstacle-request"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImportObstacle-request>)))
  "Returns full string definition for message of type '<ImportObstacle-request>"
  (cl:format cl:nil "string filename~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImportObstacle-request)))
  "Returns full string definition for message of type 'ImportObstacle-request"
  (cl:format cl:nil "string filename~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImportObstacle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImportObstacle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImportObstacle-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude ImportObstacle-response.msg.html

(cl:defclass <ImportObstacle-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ImportObstacle-response (<ImportObstacle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImportObstacle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImportObstacle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<ImportObstacle-response> is deprecated: use graspit_interface-srv:ImportObstacle-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ImportObstacle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ImportObstacle-response>)))
    "Constants for message type '<ImportObstacle-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ImportObstacle-response)))
    "Constants for message type 'ImportObstacle-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_FAILURE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImportObstacle-response>) ostream)
  "Serializes a message object of type '<ImportObstacle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImportObstacle-response>) istream)
  "Deserializes a message object of type '<ImportObstacle-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImportObstacle-response>)))
  "Returns string type for a service object of type '<ImportObstacle-response>"
  "graspit_interface/ImportObstacleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImportObstacle-response)))
  "Returns string type for a service object of type 'ImportObstacle-response"
  "graspit_interface/ImportObstacleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImportObstacle-response>)))
  "Returns md5sum for a message object of type '<ImportObstacle-response>"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImportObstacle-response)))
  "Returns md5sum for a message object of type 'ImportObstacle-response"
  "f93e69a0f69e4bad6bb0d444c65417e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImportObstacle-response>)))
  "Returns full string definition for message of type '<ImportObstacle-response>"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImportObstacle-response)))
  "Returns full string definition for message of type 'ImportObstacle-response"
  (cl:format cl:nil "uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_FAILURE    = 1~%~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImportObstacle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImportObstacle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImportObstacle-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImportObstacle)))
  'ImportObstacle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImportObstacle)))
  'ImportObstacle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImportObstacle)))
  "Returns string type for a service object of type '<ImportObstacle>"
  "graspit_interface/ImportObstacle")