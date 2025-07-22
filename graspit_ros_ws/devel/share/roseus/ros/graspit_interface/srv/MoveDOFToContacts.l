;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::MoveDOFToContacts)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'MoveDOFToContacts (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTS")
  (make-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTS"))
(unless (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSREQUEST")
  (make-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE")
  (make-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::MoveDOFToContactsRequest
  :super ros::object
  :slots (_id _dofs _desired_steps _stopAtContact ))

(defmethod graspit_interface::MoveDOFToContactsRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:dofs __dofs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:desired_steps __desired_steps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:stopAtContact __stopAtContact) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _dofs __dofs)
   (setq _desired_steps __desired_steps)
   (setq _stopAtContact __stopAtContact)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dofs
   (&optional __dofs)
   (if __dofs (setq _dofs __dofs)) _dofs)
  (:desired_steps
   (&optional __desired_steps)
   (if __desired_steps (setq _desired_steps __desired_steps)) _desired_steps)
  (:stopAtContact
   (&optional __stopAtContact)
   (if __stopAtContact (setq _stopAtContact __stopAtContact)) _stopAtContact)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float64[] _dofs
    (* 8    (length _dofs)) 4
    ;; float64[] _desired_steps
    (* 8    (length _desired_steps)) 4
    ;; bool _stopAtContact
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float64[] _dofs
     (write-long (length _dofs) s)
     (dotimes (i (length _dofs))
       (sys::poke (elt _dofs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _desired_steps
     (write-long (length _desired_steps) s)
     (dotimes (i (length _desired_steps))
       (sys::poke (elt _desired_steps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _stopAtContact
       (if _stopAtContact (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _dofs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dofs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dofs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _desired_steps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desired_steps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _desired_steps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _stopAtContact
     (setq _stopAtContact (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(defconstant graspit_interface::MoveDOFToContactsResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(defconstant graspit_interface::MoveDOFToContactsResponse::*RESULT_INVALID_ID* 1)
(intern "*RESULT_DOF_OUT_OF_RANGE*" (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(shadow '*RESULT_DOF_OUT_OF_RANGE* (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(defconstant graspit_interface::MoveDOFToContactsResponse::*RESULT_DOF_OUT_OF_RANGE* 2)
(intern "*RESULT_DOF_COUNT_MISMATCH*" (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(shadow '*RESULT_DOF_COUNT_MISMATCH* (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(defconstant graspit_interface::MoveDOFToContactsResponse::*RESULT_DOF_COUNT_MISMATCH* 3)
(intern "*RESULT_DYNAMICS_MODE_ENABLED*" (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(shadow '*RESULT_DYNAMICS_MODE_ENABLED* (find-package "GRASPIT_INTERFACE::MOVEDOFTOCONTACTSRESPONSE"))
(defconstant graspit_interface::MoveDOFToContactsResponse::*RESULT_DYNAMICS_MODE_ENABLED* 4)
(defclass graspit_interface::MoveDOFToContactsResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::MoveDOFToContactsResponse
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

(defclass graspit_interface::MoveDOFToContacts
  :super ros::object
  :slots ())

(setf (get graspit_interface::MoveDOFToContacts :md5sum-) "563bb3b4c2532e0267eb65a3fae5aad5")
(setf (get graspit_interface::MoveDOFToContacts :datatype-) "graspit_interface/MoveDOFToContacts")
(setf (get graspit_interface::MoveDOFToContacts :request) graspit_interface::MoveDOFToContactsRequest)
(setf (get graspit_interface::MoveDOFToContacts :response) graspit_interface::MoveDOFToContactsResponse)

(defmethod graspit_interface::MoveDOFToContactsRequest
  (:response () (instance graspit_interface::MoveDOFToContactsResponse :init)))

(setf (get graspit_interface::MoveDOFToContactsRequest :md5sum-) "563bb3b4c2532e0267eb65a3fae5aad5")
(setf (get graspit_interface::MoveDOFToContactsRequest :datatype-) "graspit_interface/MoveDOFToContactsRequest")
(setf (get graspit_interface::MoveDOFToContactsRequest :definition-)
      "uint32 id
float64[] dofs
float64[] desired_steps
bool stopAtContact

---
uint8 RESULT_SUCCESS               = 0
uint8 RESULT_INVALID_ID            = 1
uint8 RESULT_DOF_OUT_OF_RANGE      = 2
uint8 RESULT_DOF_COUNT_MISMATCH    = 3
uint8 RESULT_DYNAMICS_MODE_ENABLED = 4

uint8 result

")

(setf (get graspit_interface::MoveDOFToContactsResponse :md5sum-) "563bb3b4c2532e0267eb65a3fae5aad5")
(setf (get graspit_interface::MoveDOFToContactsResponse :datatype-) "graspit_interface/MoveDOFToContactsResponse")
(setf (get graspit_interface::MoveDOFToContactsResponse :definition-)
      "uint32 id
float64[] dofs
float64[] desired_steps
bool stopAtContact

---
uint8 RESULT_SUCCESS               = 0
uint8 RESULT_INVALID_ID            = 1
uint8 RESULT_DOF_OUT_OF_RANGE      = 2
uint8 RESULT_DOF_COUNT_MISMATCH    = 3
uint8 RESULT_DYNAMICS_MODE_ENABLED = 4

uint8 result

")



(provide :graspit_interface/MoveDOFToContacts "563bb3b4c2532e0267eb65a3fae5aad5")


