;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GetBodies)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GetBodies (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GETBODIES")
  (make-package "GRASPIT_INTERFACE::GETBODIES"))
(unless (find-package "GRASPIT_INTERFACE::GETBODIESREQUEST")
  (make-package "GRASPIT_INTERFACE::GETBODIESREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::GETBODIESRESPONSE")
  (make-package "GRASPIT_INTERFACE::GETBODIESRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::GetBodiesRequest
  :super ros::object
  :slots ())

(defmethod graspit_interface::GetBodiesRequest
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

(defclass graspit_interface::GetBodiesResponse
  :super ros::object
  :slots (_ids ))

(defmethod graspit_interface::GetBodiesResponse
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _ids __ids)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass graspit_interface::GetBodies
  :super ros::object
  :slots ())

(setf (get graspit_interface::GetBodies :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetBodies :datatype-) "graspit_interface/GetBodies")
(setf (get graspit_interface::GetBodies :request) graspit_interface::GetBodiesRequest)
(setf (get graspit_interface::GetBodies :response) graspit_interface::GetBodiesResponse)

(defmethod graspit_interface::GetBodiesRequest
  (:response () (instance graspit_interface::GetBodiesResponse :init)))

(setf (get graspit_interface::GetBodiesRequest :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetBodiesRequest :datatype-) "graspit_interface/GetBodiesRequest")
(setf (get graspit_interface::GetBodiesRequest :definition-)
      "
---
int32[] ids

")

(setf (get graspit_interface::GetBodiesResponse :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetBodiesResponse :datatype-) "graspit_interface/GetBodiesResponse")
(setf (get graspit_interface::GetBodiesResponse :definition-)
      "
---
int32[] ids

")



(provide :graspit_interface/GetBodies "4f22efebf407aadba2ecc69df353d113")


