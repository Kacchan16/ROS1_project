; Auto-generated. Do not edit!


(cl:in-package ros_topics_services-srv)


;//! \htmlinclude RectangleArea-request.msg.html

(cl:defclass <RectangleArea-request> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0))
)

(cl:defclass RectangleArea-request (<RectangleArea-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RectangleArea-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RectangleArea-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_topics_services-srv:<RectangleArea-request> is deprecated: use ros_topics_services-srv:RectangleArea-request instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <RectangleArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topics_services-srv:height-val is deprecated.  Use ros_topics_services-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <RectangleArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topics_services-srv:length-val is deprecated.  Use ros_topics_services-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RectangleArea-request>) ostream)
  "Serializes a message object of type '<RectangleArea-request>"
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RectangleArea-request>) istream)
  "Deserializes a message object of type '<RectangleArea-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RectangleArea-request>)))
  "Returns string type for a service object of type '<RectangleArea-request>"
  "ros_topics_services/RectangleAreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectangleArea-request)))
  "Returns string type for a service object of type 'RectangleArea-request"
  "ros_topics_services/RectangleAreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RectangleArea-request>)))
  "Returns md5sum for a message object of type '<RectangleArea-request>"
  "6b0cfd5befd2de410547c4b17bd912bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RectangleArea-request)))
  "Returns md5sum for a message object of type 'RectangleArea-request"
  "6b0cfd5befd2de410547c4b17bd912bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RectangleArea-request>)))
  "Returns full string definition for message of type '<RectangleArea-request>"
  (cl:format cl:nil "#input ~%int32 height~%int32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RectangleArea-request)))
  "Returns full string definition for message of type 'RectangleArea-request"
  (cl:format cl:nil "#input ~%int32 height~%int32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RectangleArea-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RectangleArea-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RectangleArea-request
    (cl:cons ':height (height msg))
    (cl:cons ':length (length msg))
))
;//! \htmlinclude RectangleArea-response.msg.html

(cl:defclass <RectangleArea-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type cl:integer
    :initform 0))
)

(cl:defclass RectangleArea-response (<RectangleArea-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RectangleArea-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RectangleArea-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_topics_services-srv:<RectangleArea-response> is deprecated: use ros_topics_services-srv:RectangleArea-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <RectangleArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topics_services-srv:area-val is deprecated.  Use ros_topics_services-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RectangleArea-response>) ostream)
  "Serializes a message object of type '<RectangleArea-response>"
  (cl:let* ((signed (cl:slot-value msg 'area)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RectangleArea-response>) istream)
  "Deserializes a message object of type '<RectangleArea-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RectangleArea-response>)))
  "Returns string type for a service object of type '<RectangleArea-response>"
  "ros_topics_services/RectangleAreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectangleArea-response)))
  "Returns string type for a service object of type 'RectangleArea-response"
  "ros_topics_services/RectangleAreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RectangleArea-response>)))
  "Returns md5sum for a message object of type '<RectangleArea-response>"
  "6b0cfd5befd2de410547c4b17bd912bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RectangleArea-response)))
  "Returns md5sum for a message object of type 'RectangleArea-response"
  "6b0cfd5befd2de410547c4b17bd912bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RectangleArea-response>)))
  "Returns full string definition for message of type '<RectangleArea-response>"
  (cl:format cl:nil "#output~%int32 area~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RectangleArea-response)))
  "Returns full string definition for message of type 'RectangleArea-response"
  (cl:format cl:nil "#output~%int32 area~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RectangleArea-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RectangleArea-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RectangleArea-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RectangleArea)))
  'RectangleArea-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RectangleArea)))
  'RectangleArea-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectangleArea)))
  "Returns string type for a service object of type '<RectangleArea>"
  "ros_topics_services/RectangleArea")