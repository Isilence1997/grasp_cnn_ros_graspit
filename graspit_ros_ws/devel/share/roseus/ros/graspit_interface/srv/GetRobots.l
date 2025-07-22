;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GetRobots)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GetRobots (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GETROBOTS")
  (make-package "GRASPIT_INTERFACE::GETROBOTS"))
(unless (find-package "GRASPIT_INTERFACE::GETROBOTSREQUEST")
  (make-package "GRASPIT_INTERFACE::GETROBOTSREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::GETROBOTSRESPONSE")
  (make-package "GRASPIT_INTERFACE::GETROBOTSRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::GetRobotsRequest
  :super ros::object
  :slots ())

(defmethod graspit_interface::GetRobotsRequest
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

(defclass graspit_interface::GetRobotsResponse
  :super ros::object
  :slots (_ids ))

(defmethod graspit_interface::GetRobotsResponse
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

(defclass graspit_interface::GetRobots
  :super ros::object
  :slots ())

(setf (get graspit_interface::GetRobots :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetRobots :datatype-) "graspit_interface/GetRobots")
(setf (get graspit_interface::GetRobots :request) graspit_interface::GetRobotsRequest)
(setf (get graspit_interface::GetRobots :response) graspit_interface::GetRobotsResponse)

(defmethod graspit_interface::GetRobotsRequest
  (:response () (instance graspit_interface::GetRobotsResponse :init)))

(setf (get graspit_interface::GetRobotsRequest :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetRobotsRequest :datatype-) "graspit_interface/GetRobotsRequest")
(setf (get graspit_interface::GetRobotsRequest :definition-)
      "
---
int32[] ids

")

(setf (get graspit_interface::GetRobotsResponse :md5sum-) "4f22efebf407aadba2ecc69df353d113")
(setf (get graspit_interface::GetRobotsResponse :datatype-) "graspit_interface/GetRobotsResponse")
(setf (get graspit_interface::GetRobotsResponse :definition-)
      "
---
int32[] ids

")



(provide :graspit_interface/GetRobots "4f22efebf407aadba2ecc69df353d113")


