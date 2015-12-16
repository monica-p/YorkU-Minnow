; Auto-generated. Do not edit!


(cl:in-package minnow-srv)


;//! \htmlinclude command_val-request.msg.html

(cl:defclass <command_val-request> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:float
    :initform 0.0))
)

(cl:defclass command_val-request (<command_val-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command_val-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command_val-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minnow-srv:<command_val-request> is deprecated: use minnow-srv:command_val-request instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <command_val-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minnow-srv:val-val is deprecated.  Use minnow-srv:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command_val-request>) ostream)
  "Serializes a message object of type '<command_val-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command_val-request>) istream)
  "Deserializes a message object of type '<command_val-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command_val-request>)))
  "Returns string type for a service object of type '<command_val-request>"
  "minnow/command_valRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command_val-request)))
  "Returns string type for a service object of type 'command_val-request"
  "minnow/command_valRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command_val-request>)))
  "Returns md5sum for a message object of type '<command_val-request>"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command_val-request)))
  "Returns md5sum for a message object of type 'command_val-request"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command_val-request>)))
  "Returns full string definition for message of type '<command_val-request>"
  (cl:format cl:nil "float32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command_val-request)))
  "Returns full string definition for message of type 'command_val-request"
  (cl:format cl:nil "float32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command_val-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command_val-request>))
  "Converts a ROS message object to a list"
  (cl:list 'command_val-request
    (cl:cons ':val (val msg))
))
;//! \htmlinclude command_val-response.msg.html

(cl:defclass <command_val-response> (roslisp-msg-protocol:ros-message)
  ((retVal
    :reader retVal
    :initarg :retVal
    :type cl:float
    :initform 0.0))
)

(cl:defclass command_val-response (<command_val-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command_val-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command_val-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minnow-srv:<command_val-response> is deprecated: use minnow-srv:command_val-response instead.")))

(cl:ensure-generic-function 'retVal-val :lambda-list '(m))
(cl:defmethod retVal-val ((m <command_val-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minnow-srv:retVal-val is deprecated.  Use minnow-srv:retVal instead.")
  (retVal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command_val-response>) ostream)
  "Serializes a message object of type '<command_val-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'retVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command_val-response>) istream)
  "Deserializes a message object of type '<command_val-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'retVal) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command_val-response>)))
  "Returns string type for a service object of type '<command_val-response>"
  "minnow/command_valResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command_val-response)))
  "Returns string type for a service object of type 'command_val-response"
  "minnow/command_valResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command_val-response>)))
  "Returns md5sum for a message object of type '<command_val-response>"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command_val-response)))
  "Returns md5sum for a message object of type 'command_val-response"
  "e20d6f99125da9e8135bd77ec2d0dabf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command_val-response>)))
  "Returns full string definition for message of type '<command_val-response>"
  (cl:format cl:nil "float32 retVal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command_val-response)))
  "Returns full string definition for message of type 'command_val-response"
  (cl:format cl:nil "float32 retVal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command_val-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command_val-response>))
  "Converts a ROS message object to a list"
  (cl:list 'command_val-response
    (cl:cons ':retVal (retVal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'command_val)))
  'command_val-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'command_val)))
  'command_val-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command_val)))
  "Returns string type for a service object of type '<command_val>"
  "minnow/command_val")