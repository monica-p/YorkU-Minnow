
(cl:in-package :asdf)

(defsystem "minnow-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "command_val" :depends-on ("_package_command_val"))
    (:file "_package_command_val" :depends-on ("_package"))
  ))