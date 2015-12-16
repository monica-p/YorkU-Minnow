
(cl:in-package :asdf)

(defsystem "minnow-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Boat" :depends-on ("_package_Boat"))
    (:file "_package_Boat" :depends-on ("_package"))
    (:file "position" :depends-on ("_package_position"))
    (:file "_package_position" :depends-on ("_package"))
  ))