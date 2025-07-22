;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::Planner)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'Planner (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::PLANNER")
  (make-package "GRASPIT_INTERFACE::PLANNER"))

(in-package "ROS")
;;//! \htmlinclude Planner.msg.html


(intern "*SIM_ANN*" (find-package "GRASPIT_INTERFACE::PLANNER"))
(shadow '*SIM_ANN* (find-package "GRASPIT_INTERFACE::PLANNER"))
(defconstant graspit_interface::Planner::*SIM_ANN* 0)
(intern "*MULTI_THREADED*" (find-package "GRASPIT_INTERFACE::PLANNER"))
(shadow '*MULTI_THREADED* (find-package "GRASPIT_INTERFACE::PLANNER"))
(defconstant graspit_interface::Planner::*MULTI_THREADED* 1)
(defclass graspit_interface::Planner
  :super ros::object
  :slots (_type ))

(defmethod graspit_interface::Planner
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get graspit_interface::Planner :md5sum-) "9f72709c2fd658bcbafe72047dc86825")
(setf (get graspit_interface::Planner :datatype-) "graspit_interface/Planner")
(setf (get graspit_interface::Planner :definition-)
      "uint8 SIM_ANN                      = 0
uint8 MULTI_THREADED               = 1

uint8 type
")



(provide :graspit_interface/Planner "9f72709c2fd658bcbafe72047dc86825")


