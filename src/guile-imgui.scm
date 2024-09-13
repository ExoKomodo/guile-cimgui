(define-module (guile-imgui)
  #:export (guile-imgui/test)
  #:use-module ((rnrs) #:select (assert))
  #:use-module (system foreign)
  #:use-module (system foreign-library))

(define cimgui (dynamic-link (or (getenv "CIMGUI_LIBRARY_PATH")
                                 "cimgui")))

(define imgui/create-context
  (foreign-library-function cimgui
                            "igCreateContext"
                            #:return-type '*
                            #:arg-types (list '*)))

;; TODO: Port this hello world to Guile, then link all of these functions -
;;       https://github.com/Bktero/HelloWorldWithDearImGui/blob/main/main.cpp

(define (guile-imgui/test)
  (format #t "[guile-imgui] Testing guile-imgui...~%")
  (assert cimgui)
  (format #t "ImGui_CreateContext: ~a~%" imgui/create-context)
  (format #t "[guile-imgui] Tests finished successfully~%"))
