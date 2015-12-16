
(cl:in-package :asdf)

(defsystem "nmea_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Sentence" :depends-on ("_package_Sentence"))
    (:file "_package_Sentence" :depends-on ("_package"))
  ))