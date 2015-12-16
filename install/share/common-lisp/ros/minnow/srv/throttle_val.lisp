; Auto-generated. Do not edit!


(cl:in-package minnow-srv)


;//! \htmlinclude throttle_val-request.msg.html

(cl:defclass <throttle_val-request> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:float
    :initform 0.0))
)

(cl:defclass throttle_val-request (<throttle_val-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <throttle_val-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'throttle_val-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minnow-srv:<throttle_val-request> is deprecated: use minnow-srv:throttle_val-request instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <throttle_val-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minnow-srv:val-val is deprecated.  Use minnow-srv:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <throttle_val-request>) ostream)
  "Serializes a message object of type '<throttle_val-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <throttle_val-request>) istream)
  "Deserializes a message object of type '<throttle_val-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<throttle_val-request>)))
  "Returns string type for a service object of type '<throttle_val-request>"
  "minnow/throttle_valRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'throttle_val-request)))
  "Returns string type for a service object of type 'throttle_val-request"
  "minnow/throttle_valRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<throttle_val-request>)))
  "Returns md5sum for a message object of type '<throttle_val-request>"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'throttle_val-request)))
  "Returns md5sum for a message object of type 'throttle_val-request"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<throttle_val-request>)))
  "Returns full string definition for message of type '<throttle_val-request>"
  (cl:format cl:nil "float32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'throttle_val-request)))
  "Returns full string definition for message of type 'throttle_val-request"
  (cl:format cl:nil "float32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <throttle_val-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <throttle_val-request>))
  "Converts a ROS message object to a list"
  (cl:list 'throttle_val-request
    (cl:cons ':val (val msg))
))
;//! \htmlinclude throttle_val-response.msg.html

(cl:defclass <throttle_val-response> (roslisp-msg-protocol:ros-message)
  ((retVal
    :reader retVal
    :initarg :retVal
    :type cl:float
    :initform 0.0))
)

(cl:defclass throttle_val-response (<throttle_val-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <throttle_val-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'throttle_val-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minnow-srv:<throttle_val-response> is deprecated: use minnow-srv:throttle_val-response instead.")))

(cl:ensure-generic-function 'retVal-val :lambda-list '(m))
(cl:defmethod retVal-val ((m <throttle_val-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minnow-srv:retVal-val is deprecated.  Use minnow-srv:retVal instead.")
  (retVal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <throttle_val-response>) ostream)
  "Serializes a message object of type '<throttle_val-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'retVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <throttle_val-response>) istream)
  "Deserializes a message object of type '<throttle_val-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'retVal) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<throttle_val-response>)))
  "Returns string type for a service object of type '<throttle_val-response>"
  "minnow/throttle_valResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'throttle_val-response)))
  "Returns string type for a service object of type 'throttle_val-response"
  "minnow/throttle_valResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<throttle_val-response>)))
  "Returns md5sum for a message object of type '<throttle_val-response>"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'throttle_val-response)))
  "Returns md5sum for a message object of type 'throttle_val-response"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<throttle_val-response>)))
  "Returns full string definition for message of type '<throttle_val-response>"
  (cl:format cl:nil "float32 retVal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'throttle_val-response)))
  "Returns full string definition for message of type 'throttle_val-response"
  (cl:format cl:nil "float32 retVal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <throttle_val-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <throttle_val-response>))
  "Converts a ROS message object to a list"
  (cl:list 'throttle_val-response
    (cl:cons ':retVal (retVal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'throttle_val)))
  'throttle_val-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'throttle_val)))
  'throttle_val-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'throttle_val)))
  "Returns string type for a service object of type '<throttle_val>"
  "minnow/throttle_val")