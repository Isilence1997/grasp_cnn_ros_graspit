;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GetGraspableBodies)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GetGraspableBodies (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODIES")
  (make-package "GRASPIT_INTERFACE::GETGRASPABLEBODIES"))
(unless (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODIESREQUEST")
  (make-package "GRASPIT_INTERFACE::GETGRASPABLEBODIESREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::GETGRASPABLEBODIESRESPONSE")
  (make-package "GRASPIT_INTERFACE::GETGRASPABLEBODIESRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::GetGraspableBodiesRequest
  :super ros::object
  :slots ())

(defmethod graspit_interface::GetGraspableBodiesRequest
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

(defclass graspit_interface::GetGraspableBodiesResponse
  :super ros::object
  :slots (_ids ))

(defmethod graspit_interface::GetGraspableBodiesResponse
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

(defclass graspit_interface::GetGraspableBodies
  :super ros::object
  :slots ())

(setf (get graspit_interface::GetGraspableBodies :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetGraspableBodies :datatype-) "graspit_interface/GetGraspableBodies")
(setf (get graspit_interface::GetGraspableBodies :request) graspit_interface::GetGraspableBodiesRequest)
(setf (get graspit_interface::GetGraspableBodies :response) graspit_interface::GetGraspableBodiesResponse)

(defmethod graspit_interface::GetGraspableBodiesRequest
  (:response () (instance graspit_interface::GetGraspableBodiesResponse :init)))

(setf (get graspit_interface::GetGraspableBodiesRequest :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetGraspableBodiesRequest :datatype-) "graspit_interface/GetGraspableBodiesRequest")
(setf (get graspit_interface::GetGraspableBodiesRequest :definition-)
      "
---
int32[] ids

")

(setf (get graspit_interface::GetGraspableBodiesResponse :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetGraspableBodiesResponse :datatype-) "graspit_interface/GetGraspableBodiesResponse")
(setf (get graspit_interface::GetGraspableBodiesResponse :definition-)
      "
---
int32[] ids

")



(provide :graspit_interface/GetGraspableBodies "4f22efebf407aadba2ecc69df353d113")


