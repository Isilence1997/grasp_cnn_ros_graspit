;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GetDynamics)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GetDynamics (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GETDYNAMICS")
  (make-package "GRASPIT_INTERFACE::GETDYNAMICS"))
(unless (find-package "GRASPIT_INTERFACE::GETDYNAMICSREQUEST")
  (make-package "GRASPIT_INTERFACE::GETDYNAMICSREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::GETDYNAMICSRESPONSE")
  (make-package "GRASPIT_INTERFACE::GETDYNAMICSRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::GetDynamicsRequest
  :super ros::object
  :slots ())

(defmethod graspit_interface::GetDynamicsRequest
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

(defclass graspit_interface::GetDynamicsResponse
  :super ros::object
  :slots (_dynamicsEnabled ))

(defmethod graspit_interface::GetDynamicsResponse
  (:init
   (&key
    ((:dynamicsEnabled __dynamicsEnabled) nil)
    )
   (send-super :init)
   (setq _dynamicsEnabled __dynamicsEnabled)
   self)
  (:dynamicsEnabled
   (&optional __dynamicsEnabled)
   (if __dynamicsEnabled (setq _dynamicsEnabled __dynamicsEnabled)) _dynamicsEnabled)
  (:serialization-length
   ()
   (+
    ;; bool _dynamicsEnabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _dynamicsEnabled
       (if _dynamicsEnabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _dynamicsEnabled
     (setq _dynamicsEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::GetDynamics
  :super ros::object
  :slots ())

(setf (get graspit_interface::GetDynamics :md5sum-) "d6fee31102eceebe1746ef7051cbdb2f")
(setf (get graspit_interface::GetDynamics :datatype-) "graspit_interface/GetDynamics")
(setf (get graspit_interface::GetDynamics :request) graspit_interface::GetDynamicsRequest)
(setf (get graspit_interface::GetDynamics :response) graspit_interface::GetDynamicsResponse)

(defmethod graspit_interface::GetDynamicsRequest
  (:response () (instance graspit_interface::GetDynamicsResponse :init)))

(setf (get graspit_interface::GetDynamicsRequest :md5sum-) "d6fee31102eceebe1746ef7051cbdb2f")
(setf (get graspit_interface::GetDynamicsRequest :datatype-) "graspit_interface/GetDynamicsRequest")
(setf (get graspit_interface::GetDynamicsRequest :definition-)
      "
---
bool dynamicsEnabled

")

(setf (get graspit_interface::GetDynamicsResponse :md5sum-) "d6fee31102eceebe1746ef7051cbdb2f")
(setf (get graspit_interface::GetDynamicsResponse :datatype-) "graspit_interface/GetDynamicsResponse")
(setf (get graspit_interface::GetDynamicsResponse :definition-)
      "
---
bool dynamicsEnabled

")



(provide :graspit_interface/GetDynamics "d6fee31102eceebe1746ef7051cbdb2f")


