;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::SimAnnParams)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'SimAnnParams (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::SIMANNPARAMS")
  (make-package "GRASPIT_INTERFACE::SIMANNPARAMS"))

(in-package "ROS")
;;//! \htmlinclude SimAnnParams.msg.html


(defclass graspit_interface::SimAnnParams
  :super ros::object
  :slots (_set_custom_params _YC _HC _YDIMS _HDIMS _NBR_ADJ _ERR_ADJ _DEF_T0 _DEF_K0 ))

(defmethod graspit_interface::SimAnnParams
  (:init
   (&key
    ((:set_custom_params __set_custom_params) nil)
    ((:YC __YC) 0.0)
    ((:HC __HC) 0.0)
    ((:YDIMS __YDIMS) 0.0)
    ((:HDIMS __HDIMS) 0.0)
    ((:NBR_ADJ __NBR_ADJ) 0.0)
    ((:ERR_ADJ __ERR_ADJ) 0.0)
    ((:DEF_T0 __DEF_T0) 0.0)
    ((:DEF_K0 __DEF_K0) 0.0)
    )
   (send-super :init)
   (setq _set_custom_params __set_custom_params)
   (setq _YC (float __YC))
   (setq _HC (float __HC))
   (setq _YDIMS (float __YDIMS))
   (setq _HDIMS (float __HDIMS))
   (setq _NBR_ADJ (float __NBR_ADJ))
   (setq _ERR_ADJ (float __ERR_ADJ))
   (setq _DEF_T0 (float __DEF_T0))
   (setq _DEF_K0 (float __DEF_K0))
   self)
  (:set_custom_params
   (&optional __set_custom_params)
   (if __set_custom_params (setq _set_custom_params __set_custom_params)) _set_custom_params)
  (:YC
   (&optional __YC)
   (if __YC (setq _YC __YC)) _YC)
  (:HC
   (&optional __HC)
   (if __HC (setq _HC __HC)) _HC)
  (:YDIMS
   (&optional __YDIMS)
   (if __YDIMS (setq _YDIMS __YDIMS)) _YDIMS)
  (:HDIMS
   (&optional __HDIMS)
   (if __HDIMS (setq _HDIMS __HDIMS)) _HDIMS)
  (:NBR_ADJ
   (&optional __NBR_ADJ)
   (if __NBR_ADJ (setq _NBR_ADJ __NBR_ADJ)) _NBR_ADJ)
  (:ERR_ADJ
   (&optional __ERR_ADJ)
   (if __ERR_ADJ (setq _ERR_ADJ __ERR_ADJ)) _ERR_ADJ)
  (:DEF_T0
   (&optional __DEF_T0)
   (if __DEF_T0 (setq _DEF_T0 __DEF_T0)) _DEF_T0)
  (:DEF_K0
   (&optional __DEF_K0)
   (if __DEF_K0 (setq _DEF_K0 __DEF_K0)) _DEF_K0)
  (:serialization-length
   ()
   (+
    ;; bool _set_custom_params
    1
    ;; float64 _YC
    8
    ;; float64 _HC
    8
    ;; float64 _YDIMS
    8
    ;; float64 _HDIMS
    8
    ;; float64 _NBR_ADJ
    8
    ;; float64 _ERR_ADJ
    8
    ;; float64 _DEF_T0
    8
    ;; float64 _DEF_K0
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_custom_params
       (if _set_custom_params (write-byte -1 s) (write-byte 0 s))
     ;; float64 _YC
       (sys::poke _YC (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _HC
       (sys::poke _HC (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _YDIMS
       (sys::poke _YDIMS (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _HDIMS
       (sys::poke _HDIMS (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _NBR_ADJ
       (sys::poke _NBR_ADJ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ERR_ADJ
       (sys::poke _ERR_ADJ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _DEF_T0
       (sys::poke _DEF_T0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _DEF_K0
       (sys::poke _DEF_K0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_custom_params
     (setq _set_custom_params (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _YC
     (setq _YC (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _HC
     (setq _HC (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _YDIMS
     (setq _YDIMS (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _HDIMS
     (setq _HDIMS (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _NBR_ADJ
     (setq _NBR_ADJ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ERR_ADJ
     (setq _ERR_ADJ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _DEF_T0
     (setq _DEF_T0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _DEF_K0
     (setq _DEF_K0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get graspit_interface::SimAnnParams :md5sum-) "f8aaad6aea614225c4b96a7800e09124")
(setf (get graspit_interface::SimAnnParams :datatype-) "graspit_interface/SimAnnParams")
(setf (get graspit_interface::SimAnnParams :definition-)
      "
# flag to switch to custom params defined in this message. If not set, GraspIt's default settings are kept
bool set_custom_params


# //Annealing parameters
# //! Annealing constant for neighbor generation schedule
float64 YC	 	#	GraspIt! default: 7.0
# //! Annealing constant for error acceptance schedule
float64 HC	 	#	GraspIt! default: 7.0
# //! Number of dimensions for neighbor generation schedule
float64 YDIMS	#	GraspIt! default: 8.0
# //! Number of dimensions for error acceptance schedule
float64 HDIMS	#	GraspIt! default: 8.0
# //! Adjust factor for neighbor generation schedule
float64 NBR_ADJ	#	GraspIt! default: 1.0
# //! Adjust raw errors reported by states to be in the relevant range of the annealing schedule
float64 ERR_ADJ	#	GraspIt! default: 1.0e-6
# //! Starting temperatue
float64 DEF_T0	#	GraspIt! default: 1e6
# //! Starting step
float64 DEF_K0	#	GraspIt! default: 30000
")



(provide :graspit_interface/SimAnnParams "f8aaad6aea614225c4b96a7800e09124")


