;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::ImportObstacle)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'ImportObstacle (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::IMPORTOBSTACLE")
  (make-package "GRASPIT_INTERFACE::IMPORTOBSTACLE"))
(unless (find-package "GRASPIT_INTERFACE::IMPORTOBSTACLEREQUEST")
  (make-package "GRASPIT_INTERFACE::IMPORTOBSTACLEREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::IMPORTOBSTACLERESPONSE")
  (make-package "GRASPIT_INTERFACE::IMPORTOBSTACLERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass graspit_interface::ImportObstacleRequest
  :super ros::object
  :slots (_filename _pose ))

(defmethod graspit_interface::ImportObstacleRequest
  (:init
   (&key
    ((:filename __filename) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _filename (string __filename))
   (setq _pose __pose)
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
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
    ;; string _filename
    4 (length _filename)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::IMPORTOBSTACLERESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::IMPORTOBSTACLERESPONSE"))
(defconstant graspit_interface::ImportObstacleResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_FAILURE*" (find-package "GRASPIT_INTERFACE::IMPORTOBSTACLERESPONSE"))
(shadow '*RESULT_FAILURE* (find-package "GRASPIT_INTERFACE::IMPORTOBSTACLERESPONSE"))
(defconstant graspit_interface::ImportObstacleResponse::*RESULT_FAILURE* 1)
(defclass graspit_interface::ImportObstacleResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::ImportObstacleResponse
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

(defclass graspit_interface::ImportObstacle
  :super ros::object
  :slots ())

(setf (get graspit_interface::ImportObstacle :md5sum-) "f93e69a0f69e4bad6bb0d444c65417e2")
(setf (get graspit_interface::ImportObstacle :datatype-) "graspit_interface/ImportObstacle")
(setf (get graspit_interface::ImportObstacle :request) graspit_interface::ImportObstacleRequest)
(setf (get graspit_interface::ImportObstacle :response) graspit_interface::ImportObstacleResponse)

(defmethod graspit_interface::ImportObstacleRequest
  (:response () (instance graspit_interface::ImportObstacleResponse :init)))

(setf (get graspit_interface::ImportObstacleRequest :md5sum-) "f93e69a0f69e4bad6bb0d444c65417e2")
(setf (get graspit_interface::ImportObstacleRequest :datatype-) "graspit_interface/ImportObstacleRequest")
(setf (get graspit_interface::ImportObstacleRequest :definition-)
      "string filename
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
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")

(setf (get graspit_interface::ImportObstacleResponse :md5sum-) "f93e69a0f69e4bad6bb0d444c65417e2")
(setf (get graspit_interface::ImportObstacleResponse :datatype-) "graspit_interface/ImportObstacleResponse")
(setf (get graspit_interface::ImportObstacleResponse :definition-)
      "string filename
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
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")



(provide :graspit_interface/ImportObstacle "f93e69a0f69e4bad6bb0d444c65417e2")


