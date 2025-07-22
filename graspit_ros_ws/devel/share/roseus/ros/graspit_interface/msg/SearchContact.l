;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SearchContact)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SearchContact (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SEARCHCONTACT")
  (make-package "GRASPIT_INTERFACE::SEARCHCONTACT"))

(in-package "ROS")
;;//! \htmlinclude SearchContact.msg.html


(intern "*CONTACT_PRESET*" (find-package "GRASPIT_INTERFACE::SEARCHCONTACT"))
(shadow '*CONTACT_PRESET* (find-package "GRASPIT_INTERFACE::SEARCHCONTACT"))
(defconstant graspit_interface::SearchContact::*CONTACT_PRESET* 0)
(intern "*CONTACT_LIVE*" (find-package "GRASPIT_INTERFACE::SEARCHCONTACT"))
(shadow '*CONTACT_LIVE* (find-package "GRASPIT_INTERFACE::SEARCHCONTACT"))
(defconstant graspit_interface::SearchContact::*CONTACT_LIVE* 1)
(defclass graspit_interface::SearchContact
  :super ros::object
  :slots (_type ))

(defmethod graspit_interface::SearchContact
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

(setf (get graspit_interface::SearchContact :md5sum-) "d1cef05e14e66e23bf62986bc999ef96")
(setf (get graspit_interface::SearchContact :datatype-) "graspit_interface/SearchContact")
(setf (get graspit_interface::SearchContact :definition-)
      "uint8 CONTACT_PRESET    = 0
uint8 CONTACT_LIVE      = 1

uint8 type	
")



(provide :graspit_interface/SearchContact "d1cef05e14e66e23bf62986bc999ef96")


