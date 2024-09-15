(define-module
  (guile-cimgui)
  #:use-module
  (system foreign)
  #:use-module
  (system foreign-library)
  #:use-module
  ((rnrs) #:select (assert)))

(define cimgui
  (dynamic-link
    (or (getenv "CIMGUI_LIBRARY_PATH") "cimgui")))

(define-public (guile-cimgui/test)
  (format
    #t
    "[guile-cimgui] Testing guile-cimgui...~%")
  (assert cimgui)
  (format
    #t
    "[guile-cimgui] Tests finished successfully~%"))

(define ImVec2 (list float float))
(define ImVec4 (list float float float float))
(define ImRect (list ImVec2 ImVec2))
(define bool unsigned-int)
(define char uint8)

(define-public igStyleColorsDark
  (foreign-library-function
    cimgui
    "igStyleColorsDark"
    #:return-type
    void
    #:arg-types
    (list '*)))

(define-public igShowDemoWindow
  (foreign-library-function
    cimgui
    "igShowDemoWindow"
    #:return-type
    void
    #:arg-types
    (list '*)))

(define-public igRender
  (foreign-library-function
    cimgui
    "igRender"
    #:return-type
    void
    #:arg-types
    (list)))

(define-public igNewFrame
  (foreign-library-function
    cimgui
    "igNewFrame"
    #:return-type
    void
    #:arg-types
    (list)))

(define-public igCreateContext
  (foreign-library-function
    cimgui
    "igCreateContext"
    #:return-type
    '*
    #:arg-types
    (list '*)))

