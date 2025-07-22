;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::FindInitialContact)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'FindInitialContact (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::FINDINITIALCONTACT")
  (make-package "GRASPIT_INTERFACE::FINDINITIALCONTACT"))
(unless (find-package "GRASPIT_INTERFACE::FINDINITIALCONTACTREQUEST")
  (make-package "GRASPIT_INTERFACE::FINDINITIALCONTACTREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::FINDINITIALCONTACTRESPONSE")
  (make-package "GRASPIT_INTERFACE::FINDINITIALCONTACTRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::FindInitialContactRequest
  :super ros::object
  :slots (_id _moveDist ))

(defmethod graspit_interface::FindInitialContactRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:moveDist __moveDist) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _moveDist (float __moveDist))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:moveDist
   (&optional __moveDist)
   (if __moveDist (setq _moveDist __moveDist)) _moveDist)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float64 _moveDist
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float64 _moveDist
       (sys::poke _moveDist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _moveDist
     (setq _moveDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::FINDINITIALCONTACTRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::FINDINITIALCONTACTRESPONSE"))
(defconstant graspit_interface::FindInitialContactResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::FINDINITIALCONTACTRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::FINDINITIALCONTACTRESPONSE"))
(defconstant graspit_interface::FindInitialContactResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::FindInitialContactResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::FindInitialContactResponse
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

(defclass graspit_interface::FindInitialContact
  :super ros::object
  :slots ())

(setf (get graspit_interface::FindInitialContact :md5sum-) "fdb119775186f8935d45786efba6c6a8")
(setf (get graspit_interface::FindInitialContact :datatype-) "graspit_interface/FindInitialContact")
(setf (get graspit_interface::FindInitialContact :request) graspit_interface::FindInitialContactRequest)
(setf (get graspit_interface::FindInitialContact :response) graspit_interface::FindInitialContactResponse)

(defmethod graspit_interface::FindInitialContactRequest
  (:response () (instance graspit_interface::FindInitialContactResponse :init)))

(setf (get graspit_interface::FindInitialContactRequest :md5sum-) "fdb119775186f8935d45786efba6c6a8")
(setf (get graspit_interface::FindInitialContactRequest :datatype-) "graspit_interface/FindInitialContactRequest")
(setf (get graspit_interface::FindInitialContactRequest :definition-)
      "uint32 id
float64 moveDist

---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")

(setf (get graspit_interface::FindInitialContactResponse :md5sum-) "fdb119775186f8935d45786efba6c6a8")
(setf (get graspit_interface::FindInitialContactResponse :datatype-) "graspit_interface/FindInitialContactResponse")
(setf (get graspit_interface::FindInitialContactResponse :definition-)
      "uint32 id
float64 moveDist

---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")



(provide :graspit_interface/FindInitialContact "fdb119775186f8935d45786efba6c6a8")


