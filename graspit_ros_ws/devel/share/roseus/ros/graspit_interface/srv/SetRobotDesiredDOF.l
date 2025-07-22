;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SetRobotDesiredDOF)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SetRobotDesiredDOF (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOF")
  (make-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOF"))
(unless (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFREQUEST")
  (make-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE")
  (make-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::SetRobotDesiredDOFRequest
  :super ros::object
  :slots (_id _dofs _dof_velocities ))

(defmethod graspit_interface::SetRobotDesiredDOFRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:dofs __dofs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dof_velocities __dof_velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _dofs __dofs)
   (setq _dof_velocities __dof_velocities)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dofs
   (&optional __dofs)
   (if __dofs (setq _dofs __dofs)) _dofs)
  (:dof_velocities
   (&optional __dof_velocities)
   (if __dof_velocities (setq _dof_velocities __dof_velocities)) _dof_velocities)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float64[] _dofs
    (* 8    (length _dofs)) 4
    ;; float64[] _dof_velocities
    (* 8    (length _dof_velocities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float64[] _dofs
     (write-long (length _dofs) s)
     (dotimes (i (length _dofs))
       (sys::poke (elt _dofs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dof_velocities
     (write-long (length _dof_velocities) s)
     (dotimes (i (length _dof_velocities))
       (sys::poke (elt _dof_velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _dofs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dofs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dofs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dof_velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dof_velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dof_velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(defconstant graspit_interface::SetRobotDesiredDOFResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(defconstant graspit_interface::SetRobotDesiredDOFResponse::*RESULT_INVALID_ID* 1)
(intern "*RESULT_DOF_OUT_OF_RANGE*" (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(shadow '*RESULT_DOF_OUT_OF_RANGE* (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(defconstant graspit_interface::SetRobotDesiredDOFResponse::*RESULT_DOF_OUT_OF_RANGE* 2)
(intern "*RESULT_DOF_COUNT_MISMATCH*" (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(shadow '*RESULT_DOF_COUNT_MISMATCH* (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(defconstant graspit_interface::SetRobotDesiredDOFResponse::*RESULT_DOF_COUNT_MISMATCH* 3)
(intern "*RESULT_DYNAMICS_MODE_DISABLED*" (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(shadow '*RESULT_DYNAMICS_MODE_DISABLED* (find-package "GRASPIT_INTERFACE::SETROBOTDESIREDDOFRESPONSE"))
(defconstant graspit_interface::SetRobotDesiredDOFResponse::*RESULT_DYNAMICS_MODE_DISABLED* 4)
(defclass graspit_interface::SetRobotDesiredDOFResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::SetRobotDesiredDOFResponse
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

(defclass graspit_interface::SetRobotDesiredDOF
  :super ros::object
  :slots ())

(setf (get graspit_interface::SetRobotDesiredDOF :md5sum-) "9c4727cc016ebb1f76651d8e34c53cc0")
(setf (get graspit_interface::SetRobotDesiredDOF :datatype-) "graspit_interface/SetRobotDesiredDOF")
(setf (get graspit_interface::SetRobotDesiredDOF :request) graspit_interface::SetRobotDesiredDOFRequest)
(setf (get graspit_interface::SetRobotDesiredDOF :response) graspit_interface::SetRobotDesiredDOFResponse)

(defmethod graspit_interface::SetRobotDesiredDOFRequest
  (:response () (instance graspit_interface::SetRobotDesiredDOFResponse :init)))

(setf (get graspit_interface::SetRobotDesiredDOFRequest :md5sum-) "9c4727cc016ebb1f76651d8e34c53cc0")
(setf (get graspit_interface::SetRobotDesiredDOFRequest :datatype-) "graspit_interface/SetRobotDesiredDOFRequest")
(setf (get graspit_interface::SetRobotDesiredDOFRequest :definition-)
      "uint32 id
float64[] dofs
float64[] dof_velocities
---
uint8 RESULT_SUCCESS                = 0
uint8 RESULT_INVALID_ID             = 1
uint8 RESULT_DOF_OUT_OF_RANGE       = 2
uint8 RESULT_DOF_COUNT_MISMATCH     = 3
uint8 RESULT_DYNAMICS_MODE_DISABLED = 4

uint8 result

")

(setf (get graspit_interface::SetRobotDesiredDOFResponse :md5sum-) "9c4727cc016ebb1f76651d8e34c53cc0")
(setf (get graspit_interface::SetRobotDesiredDOFResponse :datatype-) "graspit_interface/SetRobotDesiredDOFResponse")
(setf (get graspit_interface::SetRobotDesiredDOFResponse :definition-)
      "uint32 id
float64[] dofs
float64[] dof_velocities
---
uint8 RESULT_SUCCESS                = 0
uint8 RESULT_INVALID_ID             = 1
uint8 RESULT_DOF_OUT_OF_RANGE       = 2
uint8 RESULT_DOF_COUNT_MISMATCH     = 3
uint8 RESULT_DYNAMICS_MODE_DISABLED = 4

uint8 result

")



(provide :graspit_interface/SetRobotDesiredDOF "9c4727cc016ebb1f76651d8e34c53cc0")


