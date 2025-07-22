;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SetRobotPose)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SetRobotPose (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SETROBOTPOSE")
  (make-package "GRASPIT_INTERFACE::SETROBOTPOSE"))
(unless (find-package "GRASPIT_INTERFACE::SETROBOTPOSEREQUEST")
  (make-package "GRASPIT_INTERFACE::SETROBOTPOSEREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE")
  (make-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass graspit_interface::SetRobotPoseRequest
  :super ros::object
  :slots (_id _pose ))

(defmethod graspit_interface::SetRobotPoseRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(defconstant graspit_interface::SetRobotPoseResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(defconstant graspit_interface::SetRobotPoseResponse::*RESULT_INVALID_ID* 1)
(intern "*RESULT_INVALID_POSE*" (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(shadow '*RESULT_INVALID_POSE* (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(defconstant graspit_interface::SetRobotPoseResponse::*RESULT_INVALID_POSE* 2)
(intern "*RESULT_ROBOT_IN_COLLISION*" (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(shadow '*RESULT_ROBOT_IN_COLLISION* (find-package "GRASPIT_INTERFACE::SETROBOTPOSERESPONSE"))
(defconstant graspit_interface::SetRobotPoseResponse::*RESULT_ROBOT_IN_COLLISION* 3)
(defclass graspit_interface::SetRobotPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::SetRobotPoseResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::SetRobotPose
  :super ros::object
  :slots ())

(setf (get graspit_interface::SetRobotPose :md5sum-) "7bbb3bc1ae8c3ba9aafcae100780c0ec")
(setf (get graspit_interface::SetRobotPose :datatype-) "graspit_interface/SetRobotPose")
(setf (get graspit_interface::SetRobotPose :request) graspit_interface::SetRobotPoseRequest)
(setf (get graspit_interface::SetRobotPose :response) graspit_interface::SetRobotPoseResponse)

(defmethod graspit_interface::SetRobotPoseRequest
  (:response () (instance graspit_interface::SetRobotPoseResponse :init)))

(setf (get graspit_interface::SetRobotPoseRequest :md5sum-) "7bbb3bc1ae8c3ba9aafcae100780c0ec")
(setf (get graspit_interface::SetRobotPoseRequest :datatype-) "graspit_interface/SetRobotPoseRequest")
(setf (get graspit_interface::SetRobotPoseRequest :definition-)
      "int32 id
geometry_msgs/Pose pose

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
---
uint8 RESULT_SUCCESS            = 0
uint8 RESULT_INVALID_ID         = 1
uint8 RESULT_INVALID_POSE       = 2
uint8 RESULT_ROBOT_IN_COLLISION = 3

uint8 result

")

(setf (get graspit_interface::SetRobotPoseResponse :md5sum-) "7bbb3bc1ae8c3ba9aafcae100780c0ec")
(setf (get graspit_interface::SetRobotPoseResponse :datatype-) "graspit_interface/SetRobotPoseResponse")
(setf (get graspit_interface::SetRobotPoseResponse :definition-)
      "int32 id
geometry_msgs/Pose pose

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
---
uint8 RESULT_SUCCESS            = 0
uint8 RESULT_INVALID_ID         = 1
uint8 RESULT_INVALID_POSE       = 2
uint8 RESULT_ROBOT_IN_COLLISION = 3

uint8 result

")



(provide :graspit_interface/SetRobotPose "7bbb3bc1ae8c3ba9aafcae100780c0ec")


