;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GetGraspableBody)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GetGraspableBody (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODY")
  (make-package "GRASPIT_INTERFACE::GETGRASPABLEBODY"))
(unless (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODYREQUEST")
  (make-package "GRASPIT_INTERFACE::GETGRASPABLEBODYREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODYRESPONSE")
  (make-package "GRASPIT_INTERFACE::GETGRASPABLEBODYRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::GetGraspableBodyRequest
  :super ros::object
  :slots (_id ))

(defmethod graspit_interface::GetGraspableBodyRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODYRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODYRESPONSE"))
(defconstant graspit_interface::GetGraspableBodyResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODYRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODYRESPONSE"))
(defconstant graspit_interface::GetGraspableBodyResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::GetGraspableBodyResponse
  :super ros::object
  :slots (_graspable_body _result ))

(defmethod graspit_interface::GetGraspableBodyResponse
  (:init
   (&key
    ((:graspable_body __graspable_body) (instance graspit_interface::GraspableBody :init))
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _graspable_body __graspable_body)
   (setq _result (round __result))
   self)
  (:graspable_body
   (&rest __graspable_body)
   (if (keywordp (car __graspable_body))
       (send* _graspable_body __graspable_body)
     (progn
       (if __graspable_body (setq _graspable_body (car __graspable_body)))
       _graspable_body)))
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; graspit_interface/GraspableBody _graspable_body
    (send _graspable_body :serialization-length)
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; graspit_interface/GraspableBody _graspable_body
       (send _graspable_body :serialize s)
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; graspit_interface/GraspableBody _graspable_body
     (send _graspable_body :deserialize buf ptr-) (incf ptr- (send _graspable_body :serialization-length))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::GetGraspableBody
  :super ros::object
  :slots ())

(setf (get graspit_interface::GetGraspableBody :md5sum-) "218c3a98036ba7fa42afdff3e6384346")
(setf (get graspit_interface::GetGraspableBody :datatype-) "graspit_interface/GetGraspableBody")
(setf (get graspit_interface::GetGraspableBody :request) graspit_interface::GetGraspableBodyRequest)
(setf (get graspit_interface::GetGraspableBody :response) graspit_interface::GetGraspableBodyResponse)

(defmethod graspit_interface::GetGraspableBodyRequest
  (:response () (instance graspit_interface::GetGraspableBodyResponse :init)))

(setf (get graspit_interface::GetGraspableBodyRequest :md5sum-) "218c3a98036ba7fa42afdff3e6384346")
(setf (get graspit_interface::GetGraspableBodyRequest :datatype-) "graspit_interface/GetGraspableBodyRequest")
(setf (get graspit_interface::GetGraspableBodyRequest :definition-)
      "int32 id
---
GraspableBody graspable_body

uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result


================================================================================
MSG: graspit_interface/GraspableBody
std_msgs/Header header

geometry_msgs/Pose pose
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
")

(setf (get graspit_interface::GetGraspableBodyResponse :md5sum-) "218c3a98036ba7fa42afdff3e6384346")
(setf (get graspit_interface::GetGraspableBodyResponse :datatype-) "graspit_interface/GetGraspableBodyResponse")
(setf (get graspit_interface::GetGraspableBodyResponse :definition-)
      "int32 id
---
GraspableBody graspable_body

uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result


================================================================================
MSG: graspit_interface/GraspableBody
std_msgs/Header header

geometry_msgs/Pose pose
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
")



(provide :graspit_interface/GetGraspableBody "218c3a98036ba7fa42afdff3e6384346")


