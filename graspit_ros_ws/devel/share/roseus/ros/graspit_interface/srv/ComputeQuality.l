;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::ComputeQuality)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'ComputeQuality (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::COMPUTEQUALITY")
  (make-package "GRASPIT_INTERFACE::COMPUTEQUALITY"))
(unless (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYREQUEST")
  (make-package "GRASPIT_INTERFACE::COMPUTEQUALITYREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE")
  (make-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::ComputeQualityRequest
  :super ros::object
  :slots (_id ))

(defmethod graspit_interface::ComputeQualityRequest
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
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE"))
(defconstant graspit_interface::ComputeQualityResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE"))
(defconstant graspit_interface::ComputeQualityResponse::*RESULT_INVALID_ID* 1)
(intern "*RESULT_COLLISION*" (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE"))
(shadow '*RESULT_COLLISION* (find-package "GRASPIT_INTERFACE::COMPUTEQUALITYRESPONSE"))
(defconstant graspit_interface::ComputeQualityResponse::*RESULT_COLLISION* 2)
(defclass graspit_interface::ComputeQualityResponse
  :super ros::object
  :slots (_result _volume _epsilon ))

(defmethod graspit_interface::ComputeQualityResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:volume __volume) 0.0)
    ((:epsilon __epsilon) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _volume (float __volume))
   (setq _epsilon (float __epsilon))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:epsilon
   (&optional __epsilon)
   (if __epsilon (setq _epsilon __epsilon)) _epsilon)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ;; float64 _volume
    8
    ;; float64 _epsilon
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;; float64 _volume
       (sys::poke _volume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _epsilon
       (sys::poke _epsilon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _volume
     (setq _volume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _epsilon
     (setq _epsilon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass graspit_interface::ComputeQuality
  :super ros::object
  :slots ())

(setf (get graspit_interface::ComputeQuality :md5sum-) "3ac746f2f68fcf449fe5d3aa24815bd3")
(setf (get graspit_interface::ComputeQuality :datatype-) "graspit_interface/ComputeQuality")
(setf (get graspit_interface::ComputeQuality :request) graspit_interface::ComputeQualityRequest)
(setf (get graspit_interface::ComputeQuality :response) graspit_interface::ComputeQualityResponse)

(defmethod graspit_interface::ComputeQualityRequest
  (:response () (instance graspit_interface::ComputeQualityResponse :init)))

(setf (get graspit_interface::ComputeQualityRequest :md5sum-) "3ac746f2f68fcf449fe5d3aa24815bd3")
(setf (get graspit_interface::ComputeQualityRequest :datatype-) "graspit_interface/ComputeQualityRequest")
(setf (get graspit_interface::ComputeQualityRequest :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1
uint8 RESULT_COLLISION  = 2

uint8 result

float64 volume
float64 epsilon

")

(setf (get graspit_interface::ComputeQualityResponse :md5sum-) "3ac746f2f68fcf449fe5d3aa24815bd3")
(setf (get graspit_interface::ComputeQualityResponse :datatype-) "graspit_interface/ComputeQualityResponse")
(setf (get graspit_interface::ComputeQualityResponse :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1
uint8 RESULT_COLLISION  = 2

uint8 result

float64 volume
float64 epsilon

")



(provide :graspit_interface/ComputeQuality "3ac746f2f68fcf449fe5d3aa24815bd3")


