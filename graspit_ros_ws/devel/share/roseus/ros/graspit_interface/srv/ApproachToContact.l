;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::ApproachToContact)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'ApproachToContact (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::APPROACHTOCONTACT")
  (make-package "GRASPIT_INTERFACE::APPROACHTOCONTACT"))
(unless (find-package "GRASPIT_INTERFACE::APPROACHTOCONTACTREQUEST")
  (make-package "GRASPIT_INTERFACE::APPROACHTOCONTACTREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::APPROACHTOCONTACTRESPONSE")
  (make-package "GRASPIT_INTERFACE::APPROACHTOCONTACTRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::ApproachToContactRequest
  :super ros::object
  :slots (_moveDist _oneStep _id ))

(defmethod graspit_interface::ApproachToContactRequest
  (:init
   (&key
    ((:moveDist __moveDist) 0.0)
    ((:oneStep __oneStep) nil)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _moveDist (float __moveDist))
   (setq _oneStep __oneStep)
   (setq _id (round __id))
   self)
  (:moveDist
   (&optional __moveDist)
   (if __moveDist (setq _moveDist __moveDist)) _moveDist)
  (:oneStep
   (&optional __oneStep)
   (if __oneStep (setq _oneStep __oneStep)) _oneStep)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float64 _moveDist
    8
    ;; bool _oneStep
    1
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _moveDist
       (sys::poke _moveDist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _oneStep
       (if _oneStep (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _moveDist
     (setq _moveDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _oneStep
     (setq _oneStep (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::APPROACHTOCONTACTRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::APPROACHTOCONTACTRESPONSE"))
(defconstant graspit_interface::ApproachToContactResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::APPROACHTOCONTACTRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::APPROACHTOCONTACTRESPONSE"))
(defconstant graspit_interface::ApproachToContactResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::ApproachToContactResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::ApproachToContactResponse
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

(defclass graspit_interface::ApproachToContact
  :super ros::object
  :slots ())

(setf (get graspit_interface::ApproachToContact :md5sum-) "8bedd9e6f36adf22b7fa2df39c3f07e2")
(setf (get graspit_interface::ApproachToContact :datatype-) "graspit_interface/ApproachToContact")
(setf (get graspit_interface::ApproachToContact :request) graspit_interface::ApproachToContactRequest)
(setf (get graspit_interface::ApproachToContact :response) graspit_interface::ApproachToContactResponse)

(defmethod graspit_interface::ApproachToContactRequest
  (:response () (instance graspit_interface::ApproachToContactResponse :init)))

(setf (get graspit_interface::ApproachToContactRequest :md5sum-) "8bedd9e6f36adf22b7fa2df39c3f07e2")
(setf (get graspit_interface::ApproachToContactRequest :datatype-) "graspit_interface/ApproachToContactRequest")
(setf (get graspit_interface::ApproachToContactRequest :definition-)
      "float64 moveDist
bool oneStep
uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")

(setf (get graspit_interface::ApproachToContactResponse :md5sum-) "8bedd9e6f36adf22b7fa2df39c3f07e2")
(setf (get graspit_interface::ApproachToContactResponse :datatype-) "graspit_interface/ApproachToContactResponse")
(setf (get graspit_interface::ApproachToContactResponse :definition-)
      "float64 moveDist
bool oneStep
uint32 id
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result

")



(provide :graspit_interface/ApproachToContact "8bedd9e6f36adf22b7fa2df39c3f07e2")


