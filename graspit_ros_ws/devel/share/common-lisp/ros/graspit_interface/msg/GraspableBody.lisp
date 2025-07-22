; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude GraspableBody.msg.html

(cl:defclass <GraspableBody> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GraspableBody (<GraspableBody>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspableBody>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspableBody)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<GraspableBody> is deprecated: use graspit_interface-msg:GraspableBody instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GraspableBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:header-val is deprecated.  Use graspit_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GraspableBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:pose-val is deprecated.  Use graspit_interface-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspableBody>) ostream)
  "Serializes a message object of type '<GraspableBody>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspableBody>) istream)
  "Deserializes a message object of type '<GraspableBody>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspableBody>)))
  "Returns string type for a message object of type '<GraspableBody>"
  "graspit_interface/GraspableBody")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspableBody)))
  "Returns string type for a message object of type 'GraspableBody"
  "graspit_interface/GraspableBody")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspableBody>)))
  "Returns md5sum for a message object of type '<GraspableBody>"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspableBody)))
  "Returns md5sum for a message object of type 'GraspableBody"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspableBody>)))
  "Returns full string definition for message of type '<GraspableBody>"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspableBody)))
  "Returns full string definition for message of type 'GraspableBody"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspableBody>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspableBody>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspableBody
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
))
