;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::Contact)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'Contact (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::CONTACT")
  (make-package "GRASPIT_INTERFACE::CONTACT"))

(in-package "ROS")
;;//! \htmlinclude Contact.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass graspit_interface::Contact
  :super ros::object
  :slots (_body1 _body2 _ps _cof ))

(defmethod graspit_interface::Contact
  (:init
   (&key
    ((:body1 __body1) "")
    ((:body2 __body2) "")
    ((:ps __ps) (instance geometry_msgs::PoseStamped :init))
    ((:cof __cof) 0.0)
    )
   (send-super :init)
   (setq _body1 (string __body1))
   (setq _body2 (string __body2))
   (setq _ps __ps)
   (setq _cof (float __cof))
   self)
  (:body1
   (&optional __body1)
   (if __body1 (setq _body1 __body1)) _body1)
  (:body2
   (&optional __body2)
   (if __body2 (setq _body2 __body2)) _body2)
  (:ps
   (&rest __ps)
   (if (keywordp (car __ps))
       (send* _ps __ps)
     (progn
       (if __ps (setq _ps (car __ps)))
       _ps)))
  (:cof
   (&optional __cof)
   (if __cof (setq _cof __cof)) _cof)
  (:serialization-length
   ()
   (+
    ;; string _body1
    4 (length _body1)
    ;; string _body2
    4 (length _body2)
    ;; geometry_msgs/PoseStamped _ps
    (send _ps :serialization-length)
    ;; float64 _cof
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _body1
       (write-long (length _body1) s) (princ _body1 s)
     ;; string _body2
       (write-long (length _body2) s) (princ _body2 s)
     ;; geometry_msgs/PoseStamped _ps
       (send _ps :serialize s)
     ;; float64 _cof
       (sys::poke _cof (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _body1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _body2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _ps
     (send _ps :deserialize buf ptr-) (incf ptr- (send _ps :serialization-length))
   ;; float64 _cof
     (setq _cof (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get graspit_interface::Contact :md5sum-) "acebe41357a08b9e018a7979651ec443")
(setf (get graspit_interface::Contact :datatype-) "graspit_interface/Contact")
(setf (get graspit_interface::Contact :definition-)
      "string body1
string body2

geometry_msgs/PoseStamped ps # in the graspit world frame

float64 cof # coefficient of friction.



================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :graspit_interface/Contact "acebe41357a08b9e018a7979651ec443")


