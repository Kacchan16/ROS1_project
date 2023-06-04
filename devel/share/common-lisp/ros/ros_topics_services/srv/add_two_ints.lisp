; Auto-generated. Do not edit!


(cl:in-package ros_topics_services-srv)


;//! \htmlinclude add_two_ints-request.msg.html

(cl:defclass <add_two_ints-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass add_two_ints-request (<add_two_ints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_two_ints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_two_ints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_topics_services-srv:<add_two_ints-request> is deprecated: use ros_topics_services-srv:add_two_ints-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <add_two_ints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topics_services-srv:a-val is deprecated.  Use ros_topics_services-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <add_two_ints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topics_services-srv:b-val is deprecated.  Use ros_topics_services-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_two_ints-request>) ostream)
  "Serializes a message object of type '<add_two_ints-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_two_ints-request>) istream)
  "Deserializes a message object of type '<add_two_ints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_two_ints-request>)))
  "Returns string type for a service object of type '<add_two_ints-request>"
  "ros_topics_services/add_two_intsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_two_ints-request)))
  "Returns string type for a service object of type 'add_two_ints-request"
  "ros_topics_services/add_two_intsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_two_ints-request>)))
  "Returns md5sum for a message object of type '<add_two_ints-request>"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_two_ints-request)))
  "Returns md5sum for a message object of type 'add_two_ints-request"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_two_ints-request>)))
  "Returns full string definition for message of type '<add_two_ints-request>"
  (cl:format cl:nil "#input~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_two_ints-request)))
  "Returns full string definition for message of type 'add_two_ints-request"
  (cl:format cl:nil "#input~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_two_ints-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_two_ints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add_two_ints-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude add_two_ints-response.msg.html

(cl:defclass <add_two_ints-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass add_two_ints-response (<add_two_ints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_two_ints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_two_ints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_topics_services-srv:<add_two_ints-response> is deprecated: use ros_topics_services-srv:add_two_ints-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <add_two_ints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topics_services-srv:sum-val is deprecated.  Use ros_topics_services-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_two_ints-response>) ostream)
  "Serializes a message object of type '<add_two_ints-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_two_ints-response>) istream)
  "Deserializes a message object of type '<add_two_ints-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_two_ints-response>)))
  "Returns string type for a service object of type '<add_two_ints-response>"
  "ros_topics_services/add_two_intsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_two_ints-response)))
  "Returns string type for a service object of type 'add_two_ints-response"
  "ros_topics_services/add_two_intsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_two_ints-response>)))
  "Returns md5sum for a message object of type '<add_two_ints-response>"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_two_ints-response)))
  "Returns md5sum for a message object of type 'add_two_ints-response"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_two_ints-response>)))
  "Returns full string definition for message of type '<add_two_ints-response>"
  (cl:format cl:nil "#output~%int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_two_ints-response)))
  "Returns full string definition for message of type 'add_two_ints-response"
  (cl:format cl:nil "#output~%int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_two_ints-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_two_ints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add_two_ints-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add_two_ints)))
  'add_two_ints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add_two_ints)))
  'add_two_ints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_two_ints)))
  "Returns string type for a service object of type '<add_two_ints>"
  "ros_topics_services/add_two_ints")