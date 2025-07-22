;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::ClearWorld)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'ClearWorld (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::CLEARWORLD")
  (make-package "GRASPIT_INTERFACE::CLEARWORLD"))
(unless (find-package "GRASPIT_INTERFACE::CLEARWORLDREQUEST")
  (make-package "GRASPIT_INTERFACE::CLEARWORLDREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::CLEARWORLDRESPONSE")
  (make-package "GRASPIT_INTERFACE::CLEARWORLDRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::ClearWorldRequest
  :super ros::object
  :slots ())

(defmethod graspit_interface::ClearWorldRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::CLEARWORLDRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::CLEARWORLDRESPONSE"))
(defconstant graspit_interface::ClearWorldResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_FAILURE*" (find-package "GRASPIT_INTERFACE::CLEARWORLDRESPONSE"))
(shadow '*RESULT_FAILURE* (find-package "GRASPIT_INTERFACE::CLEARWORLDRESPONSE"))
(defconstant graspit_interface::ClearWorldResponse::*RESULT_FAILURE* 1)
(defclass graspit_interface::ClearWorldResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::ClearWorldResponse
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

(defclass graspit_interface::ClearWorld
  :super ros::object
  :slots ())

(setf (get graspit_interface::ClearWorld :md5sum-) "97cab54dd6dbe9e837f2d3a5a24e81f8")
(setf (get graspit_interface::ClearWorld :datatype-) "graspit_interface/ClearWorld")
(setf (get graspit_interface::ClearWorld :request) graspit_interface::ClearWorldRequest)
(setf (get graspit_interface::ClearWorld :response) graspit_interface::ClearWorldResponse)

(defmethod graspit_interface::ClearWorldRequest
  (:response () (instance graspit_interface::ClearWorldResponse :init)))

(setf (get graspit_interface::ClearWorldRequest :md5sum-) "97cab54dd6dbe9e837f2d3a5a24e81f8")
(setf (get graspit_interface::ClearWorldRequest :datatype-) "graspit_interface/ClearWorldRequest")
(setf (get graspit_interface::ClearWorldRequest :definition-)
      "
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")

(setf (get graspit_interface::ClearWorldResponse :md5sum-) "97cab54dd6dbe9e837f2d3a5a24e81f8")
(setf (get graspit_interface::ClearWorldResponse :datatype-) "graspit_interface/ClearWorldResponse")
(setf (get graspit_interface::ClearWorldResponse :definition-)
      "
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")



(provide :graspit_interface/ClearWorld "97cab54dd6dbe9e837f2d3a5a24e81f8")


