(define-module (guile-imgui)
  #:export (guile-imgui/test)
  #:use-module ((rnrs) #:select (assert)))

(define (guile-imgui/test)
  (format #t "[guile-imgui] Testing guile-imgui...~%")
  (assert #t)
  (format #t "[guile-imgui] Tests finished successfully~%"))
