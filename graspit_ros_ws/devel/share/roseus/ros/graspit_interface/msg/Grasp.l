;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::Grasp)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'Grasp (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GRASP")
  (make-package "GRASPIT_INTERFACE::GRASP"))

(in-package "ROS")
;;//! \htmlinclude Grasp.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass graspit_interface::Grasp
  :super ros::object
  :slots (_graspable_body_id _pose _dofs _epsilon_quality _volume_quality _approach_direction ))

(defmethod graspit_interface::Grasp
  (:init
   (&key
    ((:graspable_body_id __graspable_body_id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:dofs __dofs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:epsilon_quality __epsilon_quality) 0.0)
    ((:volume_quality __volume_quality) 0.0)
    ((:approach_direction __approach_direction) (instance geometry_msgs::Vector3Stamped :init))
    )
   (send-super :init)
   (setq _graspable_body_id (round __graspable_body_id))
   (setq _pose __pose)
   (setq _dofs __dofs)
   (setq _epsilon_quality (float __epsilon_quality))
   (setq _volume_quality (float __volume_quality))
   (setq _approach_direction __approach_direction)
   self)
  (:graspable_body_id
   (&optional __graspable_body_id)
   (if __graspable_body_id (setq _graspable_body_id __graspable_body_id)) _graspable_body_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:dofs
   (&optional __dofs)
   (if __dofs (setq _dofs __dofs)) _dofs)
  (:epsilon_quality
   (&optional __epsilon_quality)
   (if __epsilon_quality (setq _epsilon_quality __epsilon_quality)) _epsilon_quality)
  (:volume_quality
   (&optional __volume_quality)
   (if __volume_quality (setq _volume_quality __volume_quality)) _volume_quality)
  (:approach_direction
   (&rest __approach_direction)
   (if (keywordp (car __approach_direction))
       (send* _approach_direction __approach_direction)
     (progn
       (if __approach_direction (setq _approach_direction (car __approach_direction)))
       _approach_direction)))
  (:serialization-length
   ()
   (+
    ;; int32 _graspable_body_id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[] _dofs
    (* 8    (length _dofs)) 4
    ;; float64 _epsilon_quality
    8
    ;; float64 _volume_quality
    8
    ;; geometry_msgs/Vector3Stamped _approach_direction
    (send _approach_direction :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _graspable_body_id
       (write-long _graspable_body_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[] _dofs
     (write-long (length _dofs) s)
     (dotimes (i (length _dofs))
       (sys::poke (elt _dofs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _epsilon_quality
       (sys::poke _epsilon_quality (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _volume_quality
       (sys::poke _volume_quality (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3Stamped _approach_direction
       (send _approach_direction :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _graspable_body_id
     (setq _graspable_body_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[] _dofs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dofs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dofs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _epsilon_quality
     (setq _epsilon_quality (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _volume_quality
     (setq _volume_quality (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3Stamped _approach_direction
     (send _approach_direction :deserialize buf ptr-) (incf ptr- (send _approach_direction :serialization-length))
   ;;
   self)
  )

(setf (get graspit_interface::Grasp :md5sum-) "dd74168be3b3320990979febf7f5265d")
(setf (get graspit_interface::Grasp :datatype-) "graspit_interface/Grasp")
(setf (get graspit_interface::Grasp :definition-)
      "# id for the body the grasp was planned on.
int32 graspable_body_id

# pose of the hand with respect to the object 
# the grasp was planned on
geometry_msgs/Pose pose

float64[] dofs

float64 epsilon_quality
float64 volume_quality


# The approach direction to take before picking an object
geometry_msgs/Vector3Stamped approach_direction





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
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :graspit_interface/Grasp "dd74168be3b3320990979febf7f5265d")


