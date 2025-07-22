;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::Energy)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'Energy (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::ENERGY")
  (make-package "GRASPIT_INTERFACE::ENERGY"))

(in-package "ROS")
;;//! \htmlinclude Energy.msg.html


(intern "*ENERGY_VOLUME*" (find-package "GRASPIT_INTERFACE::ENERGY"))
(shadow '*ENERGY_VOLUME* (find-package "GRASPIT_INTERFACE::ENERGY"))
(defconstant graspit_interface::Energy::*ENERGY_VOLUME* 0)
(intern "*ENERGY_EPSILON*" (find-package "GRASPIT_INTERFACE::ENERGY"))
(shadow '*ENERGY_EPSILON* (find-package "GRASPIT_INTERFACE::ENERGY"))
(defconstant graspit_interface::Energy::*ENERGY_EPSILON* 1)
(defclass graspit_interface::Energy
  :super ros::object
  :slots (_energy _energy_type ))

(defmethod graspit_interface::Energy
  (:init
   (&key
    ((:energy __energy) 0.0)
    ((:energy_type __energy_type) 0)
    )
   (send-super :init)
   (setq _energy (float __energy))
   (setq _energy_type (round __energy_type))
   self)
  (:energy
   (&optional __energy)
   (if __energy (setq _energy __energy)) _energy)
  (:energy_type
   (&optional __energy_type)
   (if __energy_type (setq _energy_type __energy_type)) _energy_type)
  (:serialization-length
   ()
   (+
    ;; float64 _energy
    8
    ;; uint8 _energy_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _energy
       (sys::poke _energy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _energy_type
       (write-byte _energy_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _energy
     (setq _energy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _energy_type
     (setq _energy_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get graspit_interface::Energy :md5sum-) "b02fc5d9e41e0b8406a4fd73ca0a93db")
(setf (get graspit_interface::Energy :datatype-) "graspit_interface/Energy")
(setf (get graspit_interface::Energy :definition-)
      "float64 energy
uint8 energy_type

uint8 ENERGY_VOLUME = 0
uint8 ENERGY_EPSILON = 1
")



(provide :graspit_interface/Energy "b02fc5d9e41e0b8406a4fd73ca0a93db")


