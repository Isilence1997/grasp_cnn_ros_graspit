;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::AutoOpen)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'AutoOpen (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::AUTOOPEN")
  (make-package "GRASPIT_INTERFACE::AUTOOPEN"))
(unless (find-package "GRASPIT_INTERFACE::AUTOOPENREQUEST")
  (make-package "GRASPIT_INTERFACE::AUTOOPENREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::AUTOOPENRESPONSE")
  (make-package "GRASPIT_INTERFACE::AUTOOPENRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::AutoOpenRequest
  :super ros::object
  :slots (_id ))

(defmethod graspit_interface::AutoOpenRequest
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

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::AUTOOPENRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::AUTOOPENRESPONSE"))
(defconstant graspit_interface::AutoOpenResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::AUTOOPENRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::AUTOOPENRESPONSE"))
(defconstant graspit_interface::AutoOpenResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::AutoOpenResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::AutoOpenResponse
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

(defclass graspit_interface::AutoOpen
  :super ros::object
  :slots ())

(setf (get graspit_interface::AutoOpen :md5sum-) "cbd9d726d191ae6a9b05b66d9cffaf54")
(setf (get graspit_interface::AutoOpen :datatype-) "graspit_interface/AutoOpen")
(setf (get graspit_interface::AutoOpen :request) graspit_interface::AutoOpenRequest)
(setf (get graspit_interface::AutoOpen :response) graspit_interface::AutoOpenResponse)

(defmethod graspit_interface::AutoOpenRequest
  (:response () (instance graspit_interface::AutoOpenResponse :init)))

(setf (get graspit_interface::AutoOpenRequest :md5sum-) "cbd9d726d191ae6a9b05b66d9cffaf54")
(setf (get graspit_interface::AutoOpenRequest :datatype-) "graspit_interface/AutoOpenRequest")
(setf (get graspit_interface::AutoOpenRequest :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")

(setf (get graspit_interface::AutoOpenResponse :md5sum-) "cbd9d726d191ae6a9b05b66d9cffaf54")
(setf (get graspit_interface::AutoOpenResponse :datatype-) "graspit_interface/AutoOpenResponse")
(setf (get graspit_interface::AutoOpenResponse :definition-)
      "uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")



(provide :graspit_interface/AutoOpen "cbd9d726d191ae6a9b05b66d9cffaf54")


