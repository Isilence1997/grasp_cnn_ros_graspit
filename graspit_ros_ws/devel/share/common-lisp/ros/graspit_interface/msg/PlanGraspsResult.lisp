; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude PlanGraspsResult.msg.html

(cl:defclass <PlanGraspsResult> (roslisp-msg-protocol:ros-message)
  ((grasps
    :reader grasps
    :initarg :grasps
    :type (cl:vector graspit_interface-msg:Grasp)
   :initform (cl:make-array 0 :element-type 'graspit_interface-msg:Grasp :initial-element (cl:make-instance 'graspit_interface-msg:Grasp)))
   (energies
    :reader energies
    :initarg :energies
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (search_energy
    :reader search_energy
    :initarg :search_energy
    :type cl:string
    :initform ""))
)

(cl:defclass PlanGraspsResult (<PlanGraspsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanGraspsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanGraspsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<PlanGraspsResult> is deprecated: use graspit_interface-msg:PlanGraspsResult instead.")))

(cl:ensure-generic-function 'grasps-val :lambda-list '(m))
(cl:defmethod grasps-val ((m <PlanGraspsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:grasps-val is deprecated.  Use graspit_interface-msg:grasps instead.")
  (grasps m))

(cl:ensure-generic-function 'energies-val :lambda-list '(m))
(cl:defmethod energies-val ((m <PlanGraspsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:energies-val is deprecated.  Use graspit_interface-msg:energies instead.")
  (energies m))

(cl:ensure-generic-function 'search_energy-val :lambda-list '(m))
(cl:defmethod search_energy-val ((m <PlanGraspsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:search_energy-val is deprecated.  Use graspit_interface-msg:search_energy instead.")
  (search_energy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanGraspsResult>) ostream)
  "Serializes a message object of type '<PlanGraspsResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'grasps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'grasps))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'energies))))
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
   (cl:slot-value msg 'energies))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'search_energy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'search_energy))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanGraspsResult>) istream)
  "Deserializes a message object of type '<PlanGraspsResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'grasps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'grasps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'graspit_interface-msg:Grasp))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'energies) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'energies)))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'search_energy) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'search_energy) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanGraspsResult>)))
  "Returns string type for a message object of type '<PlanGraspsResult>"
  "graspit_interface/PlanGraspsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanGraspsResult)))
  "Returns string type for a message object of type 'PlanGraspsResult"
  "graspit_interface/PlanGraspsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanGraspsResult>)))
  "Returns md5sum for a message object of type '<PlanGraspsResult>"
  "0a1077cfe47bddbdc065b3d4b564b0a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanGraspsResult)))
  "Returns md5sum for a message object of type 'PlanGraspsResult"
  "0a1077cfe47bddbdc065b3d4b564b0a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanGraspsResult>)))
  "Returns full string definition for message of type '<PlanGraspsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%Grasp[] grasps~%float64[] energies~%string search_energy~%~%================================================================================~%MSG: graspit_interface/Grasp~%# id for the body the grasp was planned on.~%int32 graspable_body_id~%~%# pose of the hand with respect to the object ~%# the grasp was planned on~%geometry_msgs/Pose pose~%~%float64[] dofs~%~%float64 epsilon_quality~%float64 volume_quality~%~%~%# The approach direction to take before picking an object~%geometry_msgs/Vector3Stamped approach_direction~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanGraspsResult)))
  "Returns full string definition for message of type 'PlanGraspsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%Grasp[] grasps~%float64[] energies~%string search_energy~%~%================================================================================~%MSG: graspit_interface/Grasp~%# id for the body the grasp was planned on.~%int32 graspable_body_id~%~%# pose of the hand with respect to the object ~%# the grasp was planned on~%geometry_msgs/Pose pose~%~%float64[] dofs~%~%float64 epsilon_quality~%float64 volume_quality~%~%~%# The approach direction to take before picking an object~%geometry_msgs/Vector3Stamped approach_direction~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanGraspsResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'grasps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'energies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'search_energy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanGraspsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanGraspsResult
    (cl:cons ':grasps (grasps msg))
    (cl:cons ':energies (energies msg))
    (cl:cons ':search_energy (search_energy msg))
))
