;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::ToggleAllCollisions)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'ToggleAllCollisions (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::TOGGLEALLCOLLISIONS")
  (make-package "GRASPIT_INTERFACE::TOGGLEALLCOLLISIONS"))
(unless (find-package "GRASPIT_INTERFACE::TOGGLEALLCOLLISIONSREQUEST")
  (make-package "GRASPIT_INTERFACE::TOGGLEALLCOLLISIONSREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::TOGGLEALLCOLLISIONSRESPONSE")
  (make-package "GRASPIT_INTERFACE::TOGGLEALLCOLLISIONSRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::ToggleAllCollisionsRequest
  :super ros::object
  :slots (_enableCollisions ))

(defmethod graspit_interface::ToggleAllCollisionsRequest
  (:init
   (&key
    ((:enableCollisions __enableCollisions) nil)
    )
   (send-super :init)
   (setq _enableCollisions __enableCollisions)
   self)
  (:enableCollisions
   (&optional __enableCollisions)
   (if __enableCollisions (setq _enableCollisions __enableCollisions)) _enableCollisions)
  (:serialization-length
   ()
   (+
    ;; bool _enableCollisions
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableCollisions
       (if _enableCollisions (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableCollisions
     (setq _enableCollisions (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::ToggleAllCollisionsResponse
  :super ros::object
  :slots ())

(defmethod graspit_interface::ToggleAllCollisionsResponse
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

(defclass graspit_interface::ToggleAllCollisions
  :super ros::object
  :slots ())

(setf (get graspit_interface::ToggleAllCollisions :md5sum-) "9c8e2540904142e4bddf9c31767c9e80")
(setf (get graspit_interface::ToggleAllCollisions :datatype-) "graspit_interface/ToggleAllCollisions")
(setf (get graspit_interface::ToggleAllCollisions :request) graspit_interface::ToggleAllCollisionsRequest)
(setf (get graspit_interface::ToggleAllCollisions :response) graspit_interface::ToggleAllCollisionsResponse)

(defmethod graspit_interface::ToggleAllCollisionsRequest
  (:response () (instance graspit_interface::ToggleAllCollisionsResponse :init)))

(setf (get graspit_interface::ToggleAllCollisionsRequest :md5sum-) "9c8e2540904142e4bddf9c31767c9e80")
(setf (get graspit_interface::ToggleAllCollisionsRequest :datatype-) "graspit_interface/ToggleAllCollisionsRequest")
(setf (get graspit_interface::ToggleAllCollisionsRequest :definition-)
      "bool enableCollisions
---

")

(setf (get graspit_interface::ToggleAllCollisionsResponse :md5sum-) "9c8e2540904142e4bddf9c31767c9e80")
(setf (get graspit_interface::ToggleAllCollisionsResponse :datatype-) "graspit_interface/ToggleAllCollisionsResponse")
(setf (get graspit_interface::ToggleAllCollisionsResponse :definition-)
      "bool enableCollisions
---

")



(provide :graspit_interface/ToggleAllCollisions "9c8e2540904142e4bddf9c31767c9e80")


