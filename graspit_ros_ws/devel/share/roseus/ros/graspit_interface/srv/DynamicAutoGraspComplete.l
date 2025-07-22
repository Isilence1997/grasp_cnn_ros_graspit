;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::DynamicAutoGraspComplete)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'DynamicAutoGraspComplete (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETE")
  (make-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETE"))
(unless (find-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETEREQUEST")
  (make-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETEREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETERESPONSE")
  (make-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETERESPONSE"))

(in-package "ROS")





(defclass graspit_interface::DynamicAutoGraspCompleteRequest
  :super ros::object
  :slots (_id ))

(defmethod graspit_interface::DynamicAutoGraspCompleteRequest
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

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETERESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETERESPONSE"))
(defconstant graspit_interface::DynamicAutoGraspCompleteResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETERESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::DYNAMICAUTOGRASPCOMPLETERESPONSE"))
(defconstant graspit_interface::DynamicAutoGraspCompleteResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::DynamicAutoGraspCompleteResponse
  :super ros::object
  :slots (_result _GraspComplete ))

(defmethod graspit_interface::DynamicAutoGraspCompleteResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:GraspComplete __GraspComplete) nil)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _GraspComplete __GraspComplete)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:GraspComplete
   (&optional __GraspComplete)
   (if __GraspComplete (setq _GraspComplete __GraspComplete)) _GraspComplete)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ;; bool _GraspComplete
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;; bool _GraspComplete
       (if _GraspComplete (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _GraspComplete
     (setq _GraspComplete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::DynamicAutoGraspComplete
  :super ros::object
  :slots ())

(setf (get graspit_interface::DynamicAutoGraspComplete :md5sum-) "3b4169fde884df82dd4cd2e7af7cbd44")
(setf (get graspit_interface::DynamicAutoGraspComplete :datatype-) "graspit_interface/DynamicAutoGraspComplete")
(setf (get graspit_interface::DynamicAutoGraspComplete :request) graspit_interface::DynamicAutoGraspCompleteRequest)
(setf (get graspit_interface::DynamicAutoGraspComplete :response) graspit_interface::DynamicAutoGraspCompleteResponse)

(defmethod graspit_interface::DynamicAutoGraspCompleteRequest
  (:response () (instance graspit_interface::DynamicAutoGraspCompleteResponse :init)))

(setf (get graspit_interface::DynamicAutoGraspCompleteRequest :md5sum-) "3b4169fde884df82dd4cd2e7af7cbd44")
(setf (get graspit_interface::DynamicAutoGraspCompleteRequest :datatype-) "graspit_interface/DynamicAutoGraspCompleteRequest")
(setf (get graspit_interface::DynamicAutoGraspCompleteRequest :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

bool GraspComplete


")

(setf (get graspit_interface::DynamicAutoGraspCompleteResponse :md5sum-) "3b4169fde884df82dd4cd2e7af7cbd44")
(setf (get graspit_interface::DynamicAutoGraspCompleteResponse :datatype-) "graspit_interface/DynamicAutoGraspCompleteResponse")
(setf (get graspit_interface::DynamicAutoGraspCompleteResponse :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

bool GraspComplete


")



(provide :graspit_interface/DynamicAutoGraspComplete "3b4169fde884df82dd4cd2e7af7cbd44")


