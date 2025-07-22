;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SaveWorld)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SaveWorld (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SAVEWORLD")
  (make-package "GRASPIT_INTERFACE::SAVEWORLD"))
(unless (find-package "GRASPIT_INTERFACE::SAVEWORLDREQUEST")
  (make-package "GRASPIT_INTERFACE::SAVEWORLDREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::SAVEWORLDRESPONSE")
  (make-package "GRASPIT_INTERFACE::SAVEWORLDRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::SaveWorldRequest
  :super ros::object
  :slots (_filename ))

(defmethod graspit_interface::SaveWorldRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::SAVEWORLDRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::SAVEWORLDRESPONSE"))
(defconstant graspit_interface::SaveWorldResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_FAILURE*" (find-package "GRASPIT_INTERFACE::SAVEWORLDRESPONSE"))
(shadow '*RESULT_FAILURE* (find-package "GRASPIT_INTERFACE::SAVEWORLDRESPONSE"))
(defconstant graspit_interface::SaveWorldResponse::*RESULT_FAILURE* 1)
(defclass graspit_interface::SaveWorldResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::SaveWorldResponse
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

(defclass graspit_interface::SaveWorld
  :super ros::object
  :slots ())

(setf (get graspit_interface::SaveWorld :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::SaveWorld :datatype-) "graspit_interface/SaveWorld")
(setf (get graspit_interface::SaveWorld :request) graspit_interface::SaveWorldRequest)
(setf (get graspit_interface::SaveWorld :response) graspit_interface::SaveWorldResponse)

(defmethod graspit_interface::SaveWorldRequest
  (:response () (instance graspit_interface::SaveWorldResponse :init)))

(setf (get graspit_interface::SaveWorldRequest :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::SaveWorldRequest :datatype-) "graspit_interface/SaveWorldRequest")
(setf (get graspit_interface::SaveWorldRequest :definition-)
      "string filename
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")

(setf (get graspit_interface::SaveWorldResponse :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::SaveWorldResponse :datatype-) "graspit_interface/SaveWorldResponse")
(setf (get graspit_interface::SaveWorldResponse :definition-)
      "string filename
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")



(provide :graspit_interface/SaveWorld "285e9fabd629899a63d0043517ce4bae")


