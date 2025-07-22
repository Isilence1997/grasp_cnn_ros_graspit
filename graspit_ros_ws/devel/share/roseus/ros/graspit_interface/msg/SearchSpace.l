;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SearchSpace)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SearchSpace (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SEARCHSPACE")
  (make-package "GRASPIT_INTERFACE::SEARCHSPACE"))

(in-package "ROS")
;;//! \htmlinclude SearchSpace.msg.html


(intern "*SPACE_AXIS_ANGLE*" (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(shadow '*SPACE_AXIS_ANGLE* (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(defconstant graspit_interface::SearchSpace::*SPACE_AXIS_ANGLE* 0)
(intern "*SPACE_COMPLETE*" (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(shadow '*SPACE_COMPLETE* (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(defconstant graspit_interface::SearchSpace::*SPACE_COMPLETE* 1)
(intern "*SPACE_ELLIPSOID*" (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(shadow '*SPACE_ELLIPSOID* (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(defconstant graspit_interface::SearchSpace::*SPACE_ELLIPSOID* 2)
(intern "*SPACE_APPROACH*" (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(shadow '*SPACE_APPROACH* (find-package "GRASPIT_INTERFACE::SEARCHSPACE"))
(defconstant graspit_interface::SearchSpace::*SPACE_APPROACH* 3)
(defclass graspit_interface::SearchSpace
  :super ros::object
  :slots (_type ))

(defmethod graspit_interface::SearchSpace
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

(setf (get graspit_interface::SearchSpace :md5sum-) "686bd04c0c6bbe368a7da1ef3742f2d9")
(setf (get graspit_interface::SearchSpace :datatype-) "graspit_interface/SearchSpace")
(setf (get graspit_interface::SearchSpace :definition-)
      "uint8 SPACE_AXIS_ANGLE    = 0
uint8 SPACE_COMPLETE      = 1
uint8 SPACE_ELLIPSOID     = 2
uint8 SPACE_APPROACH      = 3

uint8 type
")



(provide :graspit_interface/SearchSpace "686bd04c0c6bbe368a7da1ef3742f2d9")


