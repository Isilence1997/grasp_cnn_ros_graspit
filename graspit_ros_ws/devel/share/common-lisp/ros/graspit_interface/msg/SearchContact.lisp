; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude SearchContact.msg.html

(cl:defclass <SearchContact> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SearchContact (<SearchContact>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchContact>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchContact)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<SearchContact> is deprecated: use graspit_interface-msg:SearchContact instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SearchContact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:type-val is deprecated.  Use graspit_interface-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SearchContact>)))
    "Constants for message type '<SearchContact>"
  '((:CONTACT_PRESET . 0)
    (:CONTACT_LIVE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SearchContact)))
    "Constants for message type 'SearchContact"
  '((:CONTACT_PRESET . 0)
    (:CONTACT_LIVE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchContact>) ostream)
  "Serializes a message object of type '<SearchContact>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchContact>) istream)
  "Deserializes a message object of type '<SearchContact>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchContact>)))
  "Returns string type for a message object of type '<SearchContact>"
  "graspit_interface/SearchContact")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchContact)))
  "Returns string type for a message object of type 'SearchContact"
  "graspit_interface/SearchContact")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchContact>)))
  "Returns md5sum for a message object of type '<SearchContact>"
  "d1cef05e14e66e23bf62986bc999ef96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchContact)))
  "Returns md5sum for a message object of type 'SearchContact"
  "d1cef05e14e66e23bf62986bc999ef96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchContact>)))
  "Returns full string definition for message of type '<SearchContact>"
  (cl:format cl:nil "uint8 CONTACT_PRESET    = 0~%uint8 CONTACT_LIVE      = 1~%~%uint8 type	~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchContact)))
  "Returns full string definition for message of type 'SearchContact"
  (cl:format cl:nil "uint8 CONTACT_PRESET    = 0~%uint8 CONTACT_LIVE      = 1~%~%uint8 type	~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchContact>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchContact>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchContact
    (cl:cons ':type (type msg))
))
