;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GetBody)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GetBody (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GETBODY")
  (make-package "GRASPIT_INTERFACE::GETBODY"))
(unless (find-package "GRASPIT_INTERFACE::GETBODYREQUEST")
  (make-package "GRASPIT_INTERFACE::GETBODYREQUEST"))
(unless (find-package "GRASPIT_INTERFACE::GETBODYRESPONSE")
  (make-package "GRASPIT_INTERFACE::GETBODYRESPONSE"))

(in-package "ROS")





(defclass graspit_interface::GetBodyRequest
  :super ros::object
  :slots (_id ))

(defmethod graspit_interface::GetBodyRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*RESULT_SUCCESS*" (find-package "GRASPIT_INTERFACE::GETBODYRESPONSE"))
(shadow '*RESULT_SUCCESS* (find-package "GRASPIT_INTERFACE::GETBODYRESPONSE"))
(defconstant graspit_interface::GetBodyResponse::*RESULT_SUCCESS* 0)
(intern "*RESULT_INVALID_ID*" (find-package "GRASPIT_INTERFACE::GETBODYRESPONSE"))
(shadow '*RESULT_INVALID_ID* (find-package "GRASPIT_INTERFACE::GETBODYRESPONSE"))
(defconstant graspit_interface::GetBodyResponse::*RESULT_INVALID_ID* 1)
(defclass graspit_interface::GetBodyResponse
  :super ros::object
  :slots (_body _result ))

(defmethod graspit_interface::GetBodyResponse
  (:init
   (&key
    ((:body __body) (instance graspit_interface::Body :init))
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _body __body)
   (setq _result (round __result))
   self)
  (:body
   (&rest __body)
   (if (keywordp (car __body))
       (send* _body __body)
     (progn
       (if __body (setq _body (car __body)))
       _body)))
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; graspit_interface/Body _body
    (send _body :serialization-length)
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; graspit_interface/Body _body
       (send _body :serialize s)
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; graspit_interface/Body _body
     (send _body :deserialize buf ptr-) (incf ptr- (send _body :serialization-length))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_interface::GetBody
  :super ros::object
  :slots ())

(setf (get graspit_interface::GetBody :md5sum-) "b5f0921777cf671340b9c6535008ff4e")
(setf (get graspit_interface::GetBody :datatype-) "graspit_interface/GetBody")
(setf (get graspit_interface::GetBody :request) graspit_interface::GetBodyRequest)
(setf (get graspit_interface::GetBody :response) graspit_interface::GetBodyResponse)

(defmethod graspit_interface::GetBodyRequest
  (:response () (instance graspit_interface::GetBodyResponse :init)))

(setf (get graspit_interface::GetBodyRequest :md5sum-) "b5f0921777cf671340b9c6535008ff4e")
(setf (get graspit_interface::GetBodyRequest :datatype-) "graspit_interface/GetBodyRequest")
(setf (get graspit_interface::GetBodyRequest :definition-)
      "int32 id
---
Body body

uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result


================================================================================
MSG: graspit_interface/Body
std_msgs/Header header

geometry_msgs/Pose pose
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

(setf (get graspit_interface::GetBodyResponse :md5sum-) "b5f0921777cf671340b9c6535008ff4e")
(setf (get graspit_interface::GetBodyResponse :datatype-) "graspit_interface/GetBodyResponse")
(setf (get graspit_interface::GetBodyResponse :definition-)
      "int32 id
---
Body body

uint8 RESULT_SUCCESS    = 0
uint8 RESULT_INVALID_ID = 1

uint8 result


================================================================================
MSG: graspit_interface/Body
std_msgs/Header header

geometry_msgs/Pose pose
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



(provide :graspit_interface/GetBody "b5f0921777cf671340b9c6535008ff4e")


