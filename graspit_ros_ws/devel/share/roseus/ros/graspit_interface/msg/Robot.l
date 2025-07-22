;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::Robot)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'Robot (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::ROBOT")
  (make-package "GRASPIT_INTERFACE::ROBOT"))

(in-package "ROS")
;;//! \htmlinclude Robot.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass graspit_interface::Robot
  :super ros::object
  :slots (_header _pose _joints _dofs _tactile _contacts ))

(defmethod graspit_interface::Robot
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance sensor_msgs::JointState :init) r)) r))
    ((:dofs __dofs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tactile __tactile) (instance graspit_interface::TactileSensorData :init))
    ((:contacts __contacts) (let (r) (dotimes (i 0) (push (instance graspit_interface::Contact :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _joints __joints)
   (setq _dofs __dofs)
   (setq _tactile __tactile)
   (setq _contacts __contacts)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:dofs
   (&optional __dofs)
   (if __dofs (setq _dofs __dofs)) _dofs)
  (:tactile
   (&rest __tactile)
   (if (keywordp (car __tactile))
       (send* _tactile __tactile)
     (progn
       (if __tactile (setq _tactile (car __tactile)))
       _tactile)))
  (:contacts
   (&rest __contacts)
   (if (keywordp (car __contacts))
       (send* _contacts __contacts)
     (progn
       (if __contacts (setq _contacts (car __contacts)))
       _contacts)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; sensor_msgs/JointState[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ;; float64[] _dofs
    (* 8    (length _dofs)) 4
    ;; graspit_interface/TactileSensorData _tactile
    (send _tactile :serialization-length)
    ;; graspit_interface/Contact[] _contacts
    (apply #'+ (send-all _contacts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; sensor_msgs/JointState[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;; float64[] _dofs
     (write-long (length _dofs) s)
     (dotimes (i (length _dofs))
       (sys::poke (elt _dofs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; graspit_interface/TactileSensorData _tactile
       (send _tactile :serialize s)
     ;; graspit_interface/Contact[] _contacts
     (write-long (length _contacts) s)
     (dolist (elem _contacts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; sensor_msgs/JointState[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _dofs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dofs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dofs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; graspit_interface/TactileSensorData _tactile
     (send _tactile :deserialize buf ptr-) (incf ptr- (send _tactile :serialization-length))
   ;; graspit_interface/Contact[] _contacts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contacts (let (r) (dotimes (i n) (push (instance graspit_interface::Contact :init) r)) r))
     (dolist (elem- _contacts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get graspit_interface::Robot :md5sum-) "a8fc916d3ea3bbc018587674c7ea5832")
(setf (get graspit_interface::Robot :datatype-) "graspit_interface/Robot")
(setf (get graspit_interface::Robot :definition-)
      "std_msgs/Header header

geometry_msgs/Pose pose
sensor_msgs/JointState[] joints
float64[] dofs
graspit_interface/TactileSensorData tactile
Contact[] contacts

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: graspit_interface/TactileSensorData
std_msgs/Header header
geometry_msgs/PoseStamped[] sensor_poses
float64[] sensor_forces

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: graspit_interface/Contact
string body1
string body2

geometry_msgs/PoseStamped ps # in the graspit world frame

float64 cof # coefficient of friction.



")



(provide :graspit_interface/Robot "a8fc916d3ea3bbc018587674c7ea5832")


