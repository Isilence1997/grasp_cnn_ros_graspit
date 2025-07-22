;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::ForceRobotDOF)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'ForceRobotDOF (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::FORCEROBOTDOF")
  (make-package "GRASPIT_INTERFACE::FORCEROBOTDOF"))
(unless (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFREQUEST")
  (make-package "GRASPIT_INTERFACE::FORCEROBOTDOFREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE")
  (make-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::ForceRobotDOFRequest
  :super ros::object
  :slots (_id _dofs ))

(defmethod graspit_interface::ForceRobotDOFRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:dofs __dofs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _dofs __dofs)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dofs
   (&optional __dofs)
   (if __dofs (setq _dofs __dofs)) _dofs)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float64[] _dofs
    (* 8    (length _dofs)) 4
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
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(defconstant graspit_interface::ForceRobotDOFResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(defconstant graspit_interface::ForceRobotDOFResponse::*RESULT_INVALID_ID* 1)
(intern "*RESULT_DOF_OUT_OF_RANGE*" (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(shadow '*RESULT_DOF_OUT_OF_RANGE* (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(defconstant graspit_interface::ForceRobotDOFResponse::*RESULT_DOF_OUT_OF_RANGE* 2)
(intern "*RESULT_DOF_COUNT_MISMATCH*" (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(shadow '*RESULT_DOF_COUNT_MISMATCH* (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(defconstant graspit_interface::ForceRobotDOFResponse::*RESULT_DOF_COUNT_MISMATCH* 3)
(intern "*RESULT_DYNAMICS_MODE_ENABLED*" (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(shadow '*RESULT_DYNAMICS_MODE_ENABLED* (find-package "GRASPIT_INTERFACE::FORCEROBOTDOFRESPONSE"))
(defconstant graspit_interface::ForceRobotDOFResponse::*RESULT_DYNAMICS_MODE_ENABLED* 4)
(defclass graspit_interface::ForceRobotDOFResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::ForceRobotDOFResponse
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

(defclass graspit_interface::ForceRobotDOF
  :super ros::object
  :slots ())

(setf (get graspit_interface::ForceRobotDOF :md5sum-) "e52a3b0acd0c439a10551b619976d996")
(setf (get graspit_interface::ForceRobotDOF :datatype-) "graspit_interface/ForceRobotDOF")
(setf (get graspit_interface::ForceRobotDOF :request) graspit_interface::ForceRobotDOFRequest)
(setf (get graspit_interface::ForceRobotDOF :response) graspit_interface::ForceRobotDOFResponse)

(defmethod graspit_interface::ForceRobotDOFRequest
  (:response () (instance graspit_interface::ForceRobotDOFResponse :init)))

(setf (get graspit_interface::ForceRobotDOFRequest :md5sum-) "e52a3b0acd0c439a10551b619976d996")
(setf (get graspit_interface::ForceRobotDOFRequest :datatype-) "graspit_interface/ForceRobotDOFRequest")
(setf (get graspit_interface::ForceRobotDOFRequest :definition-)
      "uint32 id
float64[] dofs
---
uint8 RESULT_SUCCESS               = 0
uint8 RESULT_INVALID_ID            = 1
uint8 RESULT_DOF_OUT_OF_RANGE      = 2
uint8 RESULT_DOF_COUNT_MISMATCH    = 3
uint8 RESULT_DYNAMICS_MODE_ENABLED = 4

uint8 result

")

(setf (get graspit_interface::ForceRobotDOFResponse :md5sum-) "e52a3b0acd0c439a10551b619976d996")
(setf (get graspit_interface::ForceRobotDOFResponse :datatype-) "graspit_interface/ForceRobotDOFResponse")
(setf (get graspit_interface::ForceRobotDOFResponse :definition-)
      "uint32 id
float64[] dofs
---
uint8 RESULT_SUCCESS               = 0
uint8 RESULT_INVALID_ID            = 1
uint8 RESULT_DOF_OUT_OF_RANGE      = 2
uint8 RESULT_DOF_COUNT_MISMATCH    = 3
uint8 RESULT_DYNAMICS_MODE_ENABLED = 4

uint8 result

")



(provide :graspit_interface/ForceRobotDOF "e52a3b0acd0c439a10551b619976d996")


