; Auto-generated. Do not edit!


(cl:in-package graspit_interface-srv)


;//! \htmlinclude GetGraspableBodies-request.msg.html

(cl:defclass <GetGraspableBodies-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGraspableBodies-request (<GetGraspableBodies-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGraspableBodies-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGraspableBodies-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetGraspableBodies-request> is deprecated: use graspit_interface-srv:GetGraspableBodies-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGraspableBodies-request>) ostream)
  "Serializes a message object of type '<GetGraspableBodies-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGraspableBodies-request>) istream)
  "Deserializes a message object of type '<GetGraspableBodies-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGraspableBodies-request>)))
  "Returns string type for a service object of type '<GetGraspableBodies-request>"
  "graspit_interface/GetGraspableBodiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraspableBodies-request)))
  "Returns string type for a service object of type 'GetGraspableBodies-request"
  "graspit_interface/GetGraspableBodiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGraspableBodies-request>)))
  "Returns md5sum for a message object of type '<GetGraspableBodies-request>"
  "4f22efebf407aadba2ecc69df353d113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGraspableBodies-request)))
  "Returns md5sum for a message object of type 'GetGraspableBodies-request"
  "4f22efebf407aadba2ecc69df353d113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGraspableBodies-request>)))
  "Returns full string definition for message of type '<GetGraspableBodies-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGraspableBodies-request)))
  "Returns full string definition for message of type 'GetGraspableBodies-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGraspableBodies-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGraspableBodies-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGraspableBodies-request
))
;//! \htmlinclude GetGraspableBodies-response.msg.html

(cl:defclass <GetGraspableBodies-response> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetGraspableBodies-response (<GetGraspableBodies-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGraspableBodies-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGraspableBodies-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-srv:<GetGraspableBodies-response> is deprecated: use graspit_interface-srv:GetGraspableBodies-response instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <GetGraspableBodies-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-srv:ids-val is deprecated.  Use graspit_interface-srv:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGraspableBodies-response>) ostream)
  "Serializes a message object of type '<GetGraspableBodies-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGraspableBodies-response>) istream)
  "Deserializes a message object of type '<GetGraspableBodies-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGraspableBodies-response>)))
  "Returns string type for a service object of type '<GetGraspableBodies-response>"
  "graspit_interface/GetGraspableBodiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraspableBodies-response)))
  "Returns string type for a service object of type 'GetGraspableBodies-response"
  "graspit_interface/GetGraspableBodiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGraspableBodies-response>)))
  "Returns md5sum for a message object of type '<GetGraspableBodies-response>"
  "4f22efebf407aadba2ecc69df353d113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGraspableBodies-response)))
  "Returns md5sum for a message object of type 'GetGraspableBodies-response"
  "4f22efebf407aadba2ecc69df353d113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGraspableBodies-response>)))
  "Returns full string definition for message of type '<GetGraspableBodies-response>"
  (cl:format cl:nil "int32[] ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGraspableBodies-response)))
  "Returns full string definition for message of type 'GetGraspableBodies-response"
  (cl:format cl:nil "int32[] ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGraspableBodies-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGraspableBodies-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGraspableBodies-response
    (cl:cons ':ids (ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGraspableBodies)))
  'GetGraspableBodies-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGraspableBodies)))
  'GetGraspableBodies-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraspableBodies)))
  "Returns string type for a service object of type '<GetGraspableBodies>"
  "graspit_interface/GetGraspableBodies")