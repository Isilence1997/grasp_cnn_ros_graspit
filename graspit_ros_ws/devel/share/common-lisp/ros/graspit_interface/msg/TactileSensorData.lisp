; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude TactileSensorData.msg.html

(cl:defclass <TactileSensorData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor_poses
    :reader sensor_poses
    :initarg :sensor_poses
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (sensor_forces
    :reader sensor_forces
    :initarg :sensor_forces
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TactileSensorData (<TactileSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TactileSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TactileSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<TactileSensorData> is deprecated: use graspit_interface-msg:TactileSensorData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TactileSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:header-val is deprecated.  Use graspit_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_poses-val :lambda-list '(m))
(cl:defmethod sensor_poses-val ((m <TactileSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:sensor_poses-val is deprecated.  Use graspit_interface-msg:sensor_poses instead.")
  (sensor_poses m))

(cl:ensure-generic-function 'sensor_forces-val :lambda-list '(m))
(cl:defmethod sensor_forces-val ((m <TactileSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:sensor_forces-val is deprecated.  Use graspit_interface-msg:sensor_forces instead.")
  (sensor_forces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TactileSensorData>) ostream)
  "Serializes a message object of type '<TactileSensorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sensor_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sensor_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sensor_forces))))
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
   (cl:slot-value msg 'sensor_forces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TactileSensorData>) istream)
  "Deserializes a message object of type '<TactileSensorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sensor_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sensor_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sensor_forces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sensor_forces)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TactileSensorData>)))
  "Returns string type for a message object of type '<TactileSensorData>"
  "graspit_interface/TactileSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TactileSensorData)))
  "Returns string type for a message object of type 'TactileSensorData"
  "graspit_interface/TactileSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TactileSensorData>)))
  "Returns md5sum for a message object of type '<TactileSensorData>"
  "d8b9e263562c22cdc89622a214c2dd89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TactileSensorData)))
  "Returns md5sum for a message object of type 'TactileSensorData"
  "d8b9e263562c22cdc89622a214c2dd89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TactileSensorData>)))
  "Returns full string definition for message of type '<TactileSensorData>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/PoseStamped[] sensor_poses~%float64[] sensor_forces~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TactileSensorData)))
  "Returns full string definition for message of type 'TactileSensorData"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/PoseStamped[] sensor_poses~%float64[] sensor_forces~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TactileSensorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sensor_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sensor_forces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TactileSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'TactileSensorData
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_poses (sensor_poses msg))
    (cl:cons ':sensor_forces (sensor_forces msg))
))
