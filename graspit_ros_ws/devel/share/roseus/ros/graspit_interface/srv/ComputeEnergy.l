;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::ComputeEnergy)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'ComputeEnergy (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::COMPUTEENERGY")
  (make-package "GRASPIT_INTERFACE::COMPUTEENERGY"))
(unless (find-package "GRASPIT_INTERFACE::COMPUTEENERGYREQUEST")
  (make-package "GRASPIT_INTERFACE::COMPUTEENERGYREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE")
  (make-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::ComputeEnergyRequest
  :super ros::object
  :slots (_handId _graspableBodyId _energyType ))

(defmethod graspit_interface::ComputeEnergyRequest
  (:init
   (&key
    ((:handId __handId) 0)
    ((:graspableBodyId __graspableBodyId) 0)
    ((:energyType __energyType) "")
    )
   (send-super :init)
   (setq _handId (round __handId))
   (setq _graspableBodyId (round __graspableBodyId))
   (setq _energyType (string __energyType))
   self)
  (:handId
   (&optional __handId)
   (if __handId (setq _handId __handId)) _handId)
  (:graspableBodyId
   (&optional __graspableBodyId)
   (if __graspableBodyId (setq _graspableBodyId __graspableBodyId)) _graspableBodyId)
  (:energyType
   (&optional __energyType)
   (if __energyType (setq _energyType __energyType)) _energyType)
  (:serialization-length
   ()
   (+
    ;; uint32 _handId
    4
    ;; uint32 _graspableBodyId
    4
    ;; string _energyType
    4 (length _energyType)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _handId
       (write-long _handId s)
     ;; uint32 _graspableBodyId
       (write-long _graspableBodyId s)
     ;; string _energyType
       (write-long (length _energyType) s) (princ _energyType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _handId
     (setq _handId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _graspableBodyId
     (setq _graspableBodyId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _energyType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _energyType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(defconstant graspit_interface::ComputeEnergyResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_HAND_ID*" (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(shadow '*RESULT_INVALID_HAND_ID* (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(defconstant graspit_interface::ComputeEnergyResponse::*RESULT_INVALID_HAND_ID* 1)
(intern "*RESULT_INVALID_BODY_ID*" (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(shadow '*RESULT_INVALID_BODY_ID* (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(defconstant graspit_interface::ComputeEnergyResponse::*RESULT_INVALID_BODY_ID* 2)
(intern "*RESULT_INVALID_ENERGY_TYPE*" (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(shadow '*RESULT_INVALID_ENERGY_TYPE* (find-package "GRASPIT_INTERFACE::COMPUTEENERGYRESPONSE"))
(defconstant graspit_interface::ComputeEnergyResponse::*RESULT_INVALID_ENERGY_TYPE* 3)
(defclass graspit_interface::ComputeEnergyResponse
  :super ros::object
  :slots (_result _energy _isLegal ))

(defmethod graspit_interface::ComputeEnergyResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:energy __energy) 0.0)
    ((:isLegal __isLegal) nil)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _energy (float __energy))
   (setq _isLegal __isLegal)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:energy
   (&optional __energy)
   (if __energy (setq _energy __energy)) _energy)
  (:isLegal
   (&optional __isLegal)
   (if __isLegal (setq _isLegal __isLegal)) _isLegal)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ;; float64 _energy
    8
    ;; bool _isLegal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;; float64 _energy
       (sys::poke _energy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _isLegal
       (if _isLegal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _energy
     (setq _energy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _isLegal
     (setq _isLegal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::ComputeEnergy
  :super ros::object
  :slots ())

(setf (get graspit_interface::ComputeEnergy :md5sum-) "dfcebf964a22ec5ff63ce7a982066d70")
(setf (get graspit_interface::ComputeEnergy :datatype-) "graspit_interface/ComputeEnergy")
(setf (get graspit_interface::ComputeEnergy :request) graspit_interface::ComputeEnergyRequest)
(setf (get graspit_interface::ComputeEnergy :response) graspit_interface::ComputeEnergyResponse)

(defmethod graspit_interface::ComputeEnergyRequest
  (:response () (instance graspit_interface::ComputeEnergyResponse :init)))

(setf (get graspit_interface::ComputeEnergyRequest :md5sum-) "dfcebf964a22ec5ff63ce7a982066d70")
(setf (get graspit_interface::ComputeEnergyRequest :datatype-) "graspit_interface/ComputeEnergyRequest")
(setf (get graspit_interface::ComputeEnergyRequest :definition-)
      "uint32 handId
uint32 graspableBodyId
string energyType

---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_HAND_ID = 1
uint8 RESULT_INVALID_BODY_ID  = 2
uint8 RESULT_INVALID_ENERGY_TYPE = 3

uint8 result

float64 energy
bool isLegal

")

(setf (get graspit_interface::ComputeEnergyResponse :md5sum-) "dfcebf964a22ec5ff63ce7a982066d70")
(setf (get graspit_interface::ComputeEnergyResponse :datatype-) "graspit_interface/ComputeEnergyResponse")
(setf (get graspit_interface::ComputeEnergyResponse :definition-)
      "uint32 handId
uint32 graspableBodyId
string energyType

---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_HAND_ID = 1
uint8 RESULT_INVALID_BODY_ID  = 2
uint8 RESULT_INVALID_ENERGY_TYPE = 3

uint8 result

float64 energy
bool isLegal

")



(provide :graspit_interface/ComputeEnergy "dfcebf964a22ec5ff63ce7a982066d70")


