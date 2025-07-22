;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SaveImage)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SaveImage (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SAVEIMAGE")
  (make-package "GRASPIT_INTERFACE::SAVEIMAGE"))
(unless (find-package "GRASPIT_INTERFACE::SAVEIMAGEREQUEST")
  (make-package "GRASPIT_INTERFACE::SAVEIMAGEREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::SAVEIMAGERESPONSE")
  (make-package "GRASPIT_INTERFACE::SAVEIMAGERESPONSE"))

(in-package "ROS")





(defclass graspit_interface::SaveImageRequest
  :super ros::object
  :slots (_filename ))

(defmethod graspit_interface::SaveImageRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::SAVEIMAGERESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::SAVEIMAGERESPONSE"))
(defconstant graspit_interface::SaveImageResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_FAILURE*" (find-package "GRASPIT_INTERFACE::SAVEIMAGERESPONSE"))
(shadow '*RESULT_FAILURE* (find-package "GRASPIT_INTERFACE::SAVEIMAGERESPONSE"))
(defconstant graspit_interface::SaveImageResponse::*RESULT_FAILURE* 1)
(defclass graspit_interface::SaveImageResponse
  :super ros::object
  :slots (_result ))

(defmethod graspit_interface::SaveImageResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::SaveImage
  :super ros::object
  :slots ())

(setf (get graspit_interface::SaveImage :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::SaveImage :datatype-) "graspit_interface/SaveImage")
(setf (get graspit_interface::SaveImage :request) graspit_interface::SaveImageRequest)
(setf (get graspit_interface::SaveImage :response) graspit_interface::SaveImageResponse)

(defmethod graspit_interface::SaveImageRequest
  (:response () (instance graspit_interface::SaveImageResponse :init)))

(setf (get graspit_interface::SaveImageRequest :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::SaveImageRequest :datatype-) "graspit_interface/SaveImageRequest")
(setf (get graspit_interface::SaveImageRequest :definition-)
      "string filename
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")

(setf (get graspit_interface::SaveImageResponse :md5sum-) "285e9fabd629899a63d0043517ce4bae")
(setf (get graspit_interface::SaveImageResponse :datatype-) "graspit_interface/SaveImageResponse")
(setf (get graspit_interface::SaveImageResponse :definition-)
      "string filename
---
uint8 RESULT_SUCCESS    = 0
uint8 RESULT_FAILURE    = 1

uint8 result
")



(provide :graspit_interface/SaveImage "285e9fabd629899a63d0043517ce4bae")


