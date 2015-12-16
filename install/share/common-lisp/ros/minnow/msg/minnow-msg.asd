
(cl:in-package :asdf)

(defsystem "minnow-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Boat" :depends-on ("_package_Boat"))
    (:file "_package_Boat" :depends-on ("_package"))
  ))