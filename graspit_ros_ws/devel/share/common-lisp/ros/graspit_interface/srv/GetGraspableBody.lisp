; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude GetGraspableBody-request.msg.html

(cl:defclass <GetGraspableBody-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass GetGraspableBody-request (<GetGraspableBody-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGraspableBody-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGraspableBody-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetGraspableBody-request> is deprecated: use graspit_interface-srv:GetGraspableBody-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetGraspableBody-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGraspableBody-request>) ostream)
  "Serializes a message object of type '<GetGraspableBody-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGraspableBody-request>) istream)
  "Deserializes a message object of type '<GetGraspableBody-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGraspableBody-request>)))
  "Returns string type for a service object of type '<GetGraspableBody-request>"
  "graspit_interface/GetGraspableBodyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraspableBody-request)))
  "Returns string type for a service object of type 'GetGraspableBody-request"
  "graspit_interface/GetGraspableBodyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGraspableBody-request>)))
  "Returns md5sum for a message object of type '<GetGraspableBody-request>"
  "218c3a98036ba7fa42afdff3e6384346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGraspableBody-request)))
  "Returns md5sum for a message object of type 'GetGraspableBody-request"
  "218c3a98036ba7fa42afdff3e6384346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGraspableBody-request>)))
  "Returns full string definition for message of type '<GetGraspableBody-request>"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGraspableBody-request)))
  "Returns full string definition for message of type 'GetGraspableBody-request"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGraspableBody-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGraspableBody-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGraspableBody-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetGraspableBody-response.msg.html

(cl:defclass <GetGraspableBody-response> (roslisp-msg-protocol:ros-message)
  ((graspable_body
    :reader graspable_body
    :initarg :graspable_body
    :type graspit_interface-msg:GraspableBody
    :initform (cl:make-instance 'graspit_interface-msg:GraspableBody))
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetGraspableBody-response (<GetGraspableBody-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGraspableBody-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGraspableBody-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetGraspableBody-response> is deprecated: use graspit_interface-srv:GetGraspableBody-response instead.")))

(cl:ensure-generic-function 'graspable_body-val :lambda-list '(m))
(cl:defmethod graspable_body-val ((m <GetGraspableBody-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:graspable_body-val is deprecated.  Use graspit_interface-srv:graspable_body instead.")
  (graspable_body m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetGraspableBody-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetGraspableBody-response>)))
    "Constants for message type '<GetGraspableBody-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetGraspableBody-response)))
    "Constants for message type 'GetGraspableBody-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGraspableBody-response>) ostream)
  "Serializes a message object of type '<GetGraspableBody-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'graspable_body) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGraspableBody-response>) istream)
  "Deserializes a message object of type '<GetGraspableBody-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'graspable_body) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGraspableBody-response>)))
  "Returns string type for a service object of type '<GetGraspableBody-response>"
  "graspit_interface/GetGraspableBodyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraspableBody-response)))
  "Returns string type for a service object of type 'GetGraspableBody-response"
  "graspit_interface/GetGraspableBodyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGraspableBody-response>)))
  "Returns md5sum for a message object of type '<GetGraspableBody-response>"
  "218c3a98036ba7fa42afdff3e6384346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGraspableBody-response)))
  "Returns md5sum for a message object of type 'GetGraspableBody-response"
  "218c3a98036ba7fa42afdff3e6384346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGraspableBody-response>)))
  "Returns full string definition for message of type '<GetGraspableBody-response>"
  (cl:format cl:nil "GraspableBody graspable_body~%~%uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%================================================================================~%MSG: graspit_interface/GraspableBody~%std_msgs/Header header~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGraspableBody-response)))
  "Returns full string definition for message of type 'GetGraspableBody-response"
  (cl:format cl:nil "GraspableBody graspable_body~%~%uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%================================================================================~%MSG: graspit_interface/GraspableBody~%std_msgs/Header header~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGraspableBody-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'graspable_body))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGraspableBody-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGraspableBody-response
    (cl:cons ':graspable_body (graspable_body msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGraspableBody)))
  'GetGraspableBody-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGraspableBody)))
  'GetGraspableBody-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraspableBody)))
  "Returns string type for a service object of type '<GetGraspableBody>"
  "graspit_interface/GetGraspableBody")