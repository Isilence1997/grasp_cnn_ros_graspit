;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SetDynamics)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SetDynamics (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SETDYNAMICS")
  (make-package "GRASPIT_INTERFACE::SETDYNAMICS"))
(unless (find-package "GRASPIT_INTERFACE::SETDYNAMICSREQUEST")
  (make-package "GRASPIT_INTERFACE::SETDYNAMICSREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::SETDYNAMICSRESPONSE")
  (make-package "GRASPIT_INTERFACE::SETDYNAMICSRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::SetDynamicsRequest
  :super ros::object
  :slots (_enableDynamics ))

(defmethod graspit_interface::SetDynamicsRequest
  (:init
   (&key
    ((:enableDynamics __enableDynamics) nil)
    )
   (send-super :init)
   (setq _enableDynamics __enableDynamics)
   self)
  (:enableDynamics
   (&optional __enableDynamics)
   (if __enableDynamics (setq _enableDynamics __enableDynamics)) _enableDynamics)
  (:serialization-length
   ()
   (+
    ;; bool _enableDynamics
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableDynamics
       (if _enableDynamics (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableDynamics
     (setq _enableDynamics (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::SetDynamicsResponse
  :super ros::object
  :slots ())

(defmethod graspit_interface::SetDynamicsResponse
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

(defclass graspit_interface::SetDynamics
  :super ros::object
  :slots ())

(setf (get graspit_interface::SetDynamics :md5sum-) "fd90fb715fe24e5e2d9259a52a4ce515")
(setf (get graspit_interface::SetDynamics :datatype-) "graspit_interface/SetDynamics")
(setf (get graspit_interface::SetDynamics :request) graspit_interface::SetDynamicsRequest)
(setf (get graspit_interface::SetDynamics :response) graspit_interface::SetDynamicsResponse)

(defmethod graspit_interface::SetDynamicsRequest
  (:response () (instance graspit_interface::SetDynamicsResponse :init)))

(setf (get graspit_interface::SetDynamicsRequest :md5sum-) "fd90fb715fe24e5e2d9259a52a4ce515")
(setf (get graspit_interface::SetDynamicsRequest :datatype-) "graspit_interface/SetDynamicsRequest")
(setf (get graspit_interface::SetDynamicsRequest :definition-)
      "bool enableDynamics
---


")

(setf (get graspit_interface::SetDynamicsResponse :md5sum-) "fd90fb715fe24e5e2d9259a52a4ce515")
(setf (get graspit_interface::SetDynamicsResponse :datatype-) "graspit_interface/SetDynamicsResponse")
(setf (get graspit_interface::SetDynamicsResponse :definition-)
      "bool enableDynamics
---


")



(provide :graspit_interface/SetDynamics "fd90fb715fe24e5e2d9259a52a4ce515")


