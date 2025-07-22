;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SetBodyPose)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SetBodyPose (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SETBODYPOSE")
  (make-package "GRASPIT_INTERFACE::SETBODYPOSE"))
(unless (find-package "GRASPIT_INTERFACE::SETBODYPOSEREQUEST")
  (make-package "GRASPIT_INTERFACE::SETBODYPOSEREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE")
  (make-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass graspit_interface::SetBodyPoseRequest
  :super ros::object
  :slots (_id _pose ))

(defmethod graspit_interface::SetBodyPoseRequest
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

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(defconstant graspit_interface::SetBodyPoseResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(defconstant graspit_interface::SetBodyPoseResponse::*RESULT_INVALID_ID* 1)
(intern "*RESULT_INVALID_POSE*" (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(shadow '*RESULT_INVALID_POSE* (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(defconstant graspit_interface::SetBodyPoseResponse::*RESULT_INVALID_POSE* 2)
(intern "*RESULT_BODY_IN_COLLISION*" (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(shadow '*RESULT_BODY_IN_COLLISION* (find-package "GRASPIT_INTERFACE::SETBODYPOSERESPONSE"))
(defconstant graspit_interface::SetBodyPoseResponse::*RESULT_BODY_IN_COLLISION* 3)
(defclass graspit_interface::SetBodyPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::SetBodyPoseResponse
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

(defclass graspit_interface::SetBodyPose
  :super ros::object
  :slots ())

(setf (get graspit_interface::SetBodyPose :md5sum-) "6f869681a43e0646852b48a974e19787")
(setf (get graspit_interface::SetBodyPose :datatype-) "graspit_interface/SetBodyPose")
(setf (get graspit_interface::SetBodyPose :request) graspit_interface::SetBodyPoseRequest)
(setf (get graspit_interface::SetBodyPose :response) graspit_interface::SetBodyPoseResponse)

(defmethod graspit_interface::SetBodyPoseRequest
  (:response () (instance graspit_interface::SetBodyPoseResponse :init)))

(setf (get graspit_interface::SetBodyPoseRequest :md5sum-) "6f869681a43e0646852b48a974e19787")
(setf (get graspit_interface::SetBodyPoseRequest :datatype-) "graspit_interface/SetBodyPoseRequest")
(setf (get graspit_interface::SetBodyPoseRequest :definition-)
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
uint8 RESULT_SUCCESS           = 0
uint8 RESULT_INVALID_ID        = 1
uint8 RESULT_INVALID_POSE      = 2
uint8 RESULT_BODY_IN_COLLISION = 3

uint8 result

")

(setf (get graspit_interface::SetBodyPoseResponse :md5sum-) "6f869681a43e0646852b48a974e19787")
(setf (get graspit_interface::SetBodyPoseResponse :datatype-) "graspit_interface/SetBodyPoseResponse")
(setf (get graspit_interface::SetBodyPoseResponse :definition-)
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
uint8 RESULT_SUCCESS           = 0
uint8 RESULT_INVALID_ID        = 1
uint8 RESULT_INVALID_POSE      = 2
uint8 RESULT_BODY_IN_COLLISION = 3

uint8 result

")



(provide :graspit_interface/SetBodyPose "6f869681a43e0646852b48a974e19787")


