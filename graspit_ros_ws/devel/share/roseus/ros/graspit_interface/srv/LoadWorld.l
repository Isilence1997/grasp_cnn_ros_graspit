;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::LoadWorld)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'LoadWorld (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::LOADWORLD")
  (make-package "GRASPIT_INTERFACE::LOADWORLD"))
(unless (find-package "GRASPIT_INTERFACE::LOADWORLDREQUEST")
  (make-package "GRASPIT_INTERFACE::LOADWORLDREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::LOADWORLDRESPONSE")
  (make-package "GRASPIT_INTERFACE::LOADWORLDRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::LoadWorldRequest
  :super ros::object
  :slots (_filename ))

(defmethod graspit_interface::LoadWorldRequest
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

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::LOADWORLDRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::LOADWORLDRESPONSE"))
(defconstant graspit_interface::LoadWorldResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_FAILURE*" (find-package "GRASPIT_INTERFACE::LOADWORLDRESPONSE"))
(shadow '*RESULT_FAILURE* (find-package "GRASPIT_INTERFACE::LOADWORLDRESPONSE"))
(defconstant graspit_interface::LoadWorldResponse::*RESULT_FAILURE* 1)
(defclass graspit_interface::LoadWorldResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::LoadWorldResponse
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

(defclass graspit_interface::LoadWorld
  :super ros::object
  :slots ())

(setf (get graspit_interface::LoadWorld :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::LoadWorld :datatype-) "graspit_interface/LoadWorld")
(setf (get graspit_interface::LoadWorld :request) graspit_interface::LoadWorldRequest)
(setf (get graspit_interface::LoadWorld :response) graspit_interface::LoadWorldResponse)

(defmethod graspit_interface::LoadWorldRequest
  (:response () (instance graspit_interface::LoadWorldResponse :init)))

(setf (get graspit_interface::LoadWorldRequest :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::LoadWorldRequest :datatype-) "graspit_interface/LoadWorldRequest")
(setf (get graspit_interface::LoadWorldRequest :definition-)
      "string filename
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")

(setf (get graspit_interface::LoadWorldResponse :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::LoadWorldResponse :datatype-) "graspit_interface/LoadWorldResponse")
(setf (get graspit_interface::LoadWorldResponse :definition-)
      "string filename
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")



(provide :graspit_interface/LoadWorld "285e9fabd629899a63d0043517ce4bae")


