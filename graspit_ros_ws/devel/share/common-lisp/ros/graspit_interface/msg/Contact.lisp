; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude Contact.msg.html

(cl:defclass <Contact> (roslisp-msg-protocol:ros-message)
  ((body1
    :reader body1
    :initarg :body1
    :type cl:string
    :initform "")
   (body2
    :reader body2
    :initarg :body2
    :type cl:string
    :initform "")
   (ps
    :reader ps
    :initarg :ps
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (cof
    :reader cof
    :initarg :cof
    :type cl:float
    :initform 0.0))
)

(cl:defclass Contact (<Contact>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Contact>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Contact)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<Contact> is deprecated: use graspit_interface-msg:Contact instead.")))

(cl:ensure-generic-function 'body1-val :lambda-list '(m))
(cl:defmethod body1-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:body1-val is deprecated.  Use graspit_interface-msg:body1 instead.")
  (body1 m))

(cl:ensure-generic-function 'body2-val :lambda-list '(m))
(cl:defmethod body2-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:body2-val is deprecated.  Use graspit_interface-msg:body2 instead.")
  (body2 m))

(cl:ensure-generic-function 'ps-val :lambda-list '(m))
(cl:defmethod ps-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:ps-val is deprecated.  Use graspit_interface-msg:ps instead.")
  (ps m))

(cl:ensure-generic-function 'cof-val :lambda-list '(m))
(cl:defmethod cof-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:cof-val is deprecated.  Use graspit_interface-msg:cof instead.")
  (cof m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Contact>) ostream)
  "Serializes a message object of type '<Contact>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body2))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ps) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cof))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Contact>) istream)
  "Deserializes a message object of type '<Contact>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ps) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cof) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Contact>)))
  "Returns string type for a message object of type '<Contact>"
  "graspit_interface/Contact")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Contact)))
  "Returns string type for a message object of type 'Contact"
  "graspit_interface/Contact")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Contact>)))
  "Returns md5sum for a message object of type '<Contact>"
  "acebe41357a08b9e018a7979651ec443")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Contact)))
  "Returns md5sum for a message object of type 'Contact"
  "acebe41357a08b9e018a7979651ec443")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Contact>)))
  "Returns full string definition for message of type '<Contact>"
  (cl:format cl:nil "string body1~%string body2~%~%geometry_msgs/PoseStamped ps # in the graspit world frame~%~%float64 cof # coefficient of friction.~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Contact)))
  "Returns full string definition for message of type 'Contact"
  (cl:format cl:nil "string body1~%string body2~%~%geometry_msgs/PoseStamped ps # in the graspit world frame~%~%float64 cof # coefficient of friction.~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Contact>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'body1))
     4 (cl:length (cl:slot-value msg 'body2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ps))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Contact>))
  "Converts a ROS message object to a list"
  (cl:list 'Contact
    (cl:cons ':body1 (body1 msg))
    (cl:cons ':body2 (body2 msg))
    (cl:cons ':ps (ps msg))
    (cl:cons ':cof (cof msg))
))
