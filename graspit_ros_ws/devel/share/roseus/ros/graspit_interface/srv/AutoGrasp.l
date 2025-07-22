;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::AutoGrasp)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'AutoGrasp (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::AUTOGRASP")
  (make-package "GRASPIT_INTERFACE::AUTOGRASP"))
(unless (find-package "GRASPIT_INTERFACE::AUTOGRASPREQUEST")
  (make-package "GRASPIT_INTERFACE::AUTOGRASPREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::AUTOGRASPRESPONSE")
  (make-package "GRASPIT_INTERFACE::AUTOGRASPRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::AutoGraspRequest
  :super ros::object
  :slots (_id ))

(defmethod graspit_interface::AutoGraspRequest
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

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::AUTOGRASPRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::AUTOGRASPRESPONSE"))
(defconstant graspit_interface::AutoGraspResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::AUTOGRASPRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::AUTOGRASPRESPONSE"))
(defconstant graspit_interface::AutoGraspResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::AutoGraspResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::AutoGraspResponse
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

(defclass graspit_interface::AutoGrasp
  :super ros::object
  :slots ())

(setf (get graspit_interface::AutoGrasp :md5sum-) "cbd9d726d191ae6a9b05b66d9cffaf54")
(setf (get graspit_interface::AutoGrasp :datatype-) "graspit_interface/AutoGrasp")
(setf (get graspit_interface::AutoGrasp :request) graspit_interface::AutoGraspRequest)
(setf (get graspit_interface::AutoGrasp :response) graspit_interface::AutoGraspResponse)

(defmethod graspit_interface::AutoGraspRequest
  (:response () (instance graspit_interface::AutoGraspResponse :init)))

(setf (get graspit_interface::AutoGraspRequest :md5sum-) "cbd9d726d191ae6a9b05b66d9cffaf54")
(setf (get graspit_interface::AutoGraspRequest :datatype-) "graspit_interface/AutoGraspRequest")
(setf (get graspit_interface::AutoGraspRequest :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")

(setf (get graspit_interface::AutoGraspResponse :md5sum-) "cbd9d726d191ae6a9b05b66d9cffaf54")
(setf (get graspit_interface::AutoGraspResponse :datatype-) "graspit_interface/AutoGraspResponse")
(setf (get graspit_interface::AutoGraspResponse :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")



(provide :graspit_interface/AutoGrasp "cbd9d726d191ae6a9b05b66d9cffaf54")


