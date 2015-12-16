
(cl:in-package :asdf)

(defsystem "minnow-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "throttle_val" :depends-on ("_package_throttle_val"))
    (:file "_package_throttle_val" :depends-on ("_package"))
  ))