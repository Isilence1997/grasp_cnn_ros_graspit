; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude GetBody-request.msg.html

(cl:defclass <GetBody-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass GetBody-request (<GetBody-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBody-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBody-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetBody-request> is deprecated: use graspit_interface-srv:GetBody-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetBody-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:id-val is deprecated.  Use graspit_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBody-request>) ostream)
  "Serializes a message object of type '<GetBody-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBody-request>) istream)
  "Deserializes a message object of type '<GetBody-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBody-request>)))
  "Returns string type for a service object of type '<GetBody-request>"
  "graspit_interface/GetBodyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBody-request)))
  "Returns string type for a service object of type 'GetBody-request"
  "graspit_interface/GetBodyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBody-request>)))
  "Returns md5sum for a message object of type '<GetBody-request>"
  "b5f0921777cf671340b9c6535008ff4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBody-request)))
  "Returns md5sum for a message object of type 'GetBody-request"
  "b5f0921777cf671340b9c6535008ff4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBody-request>)))
  "Returns full string definition for message of type '<GetBody-request>"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBody-request)))
  "Returns full string definition for message of type 'GetBody-request"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBody-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBody-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBody-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetBody-response.msg.html

(cl:defclass <GetBody-response> (roslisp-msg-protocol:ros-message)
  ((body
    :reader body
    :initarg :body
    :type graspit_interface-msg:Body
    :initform (cl:make-instance 'graspit_interface-msg:Body))
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetBody-response (<GetBody-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBody-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBody-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetBody-response> is deprecated: use graspit_interface-srv:GetBody-response instead.")))

(cl:ensure-generic-function 'body-val :lambda-list '(m))
(cl:defmethod body-val ((m <GetBody-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:body-val is deprecated.  Use graspit_interface-srv:body instead.")
  (body m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetBody-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:result-val is deprecated.  Use graspit_interface-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetBody-response>)))
    "Constants for message type '<GetBody-response>"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetBody-response)))
    "Constants for message type 'GetBody-response"
  '((:RESULT_SUCCESS . 0)
    (:RESULT_INVALID_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBody-response>) ostream)
  "Serializes a message object of type '<GetBody-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBody-response>) istream)
  "Deserializes a message object of type '<GetBody-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBody-response>)))
  "Returns string type for a service object of type '<GetBody-response>"
  "graspit_interface/GetBodyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBody-response)))
  "Returns string type for a service object of type 'GetBody-response"
  "graspit_interface/GetBodyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBody-response>)))
  "Returns md5sum for a message object of type '<GetBody-response>"
  "b5f0921777cf671340b9c6535008ff4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBody-response)))
  "Returns md5sum for a message object of type 'GetBody-response"
  "b5f0921777cf671340b9c6535008ff4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBody-response>)))
  "Returns full string definition for message of type '<GetBody-response>"
  (cl:format cl:nil "Body body~%~%uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%================================================================================~%MSG: graspit_interface/Body~%std_msgs/Header header~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBody-response)))
  "Returns full string definition for message of type 'GetBody-response"
  (cl:format cl:nil "Body body~%~%uint8 RESULT_SUCCESS    = 0~%uint8 RESULT_INVALID_ID = 1~%~%uint8 result~%~%~%================================================================================~%MSG: graspit_interface/Body~%std_msgs/Header header~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBody-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBody-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBody-response
    (cl:cons ':body (body msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBody)))
  'GetBody-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBody)))
  'GetBody-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBody)))
  "Returns string type for a service object of type '<GetBody>"
  "graspit_interface/GetBody")