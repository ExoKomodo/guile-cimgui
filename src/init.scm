(if (current-filename)
  (add-to-load-path (dirname (current-filename)))
  (add-to-load-path (string-append (getcwd) "/src")))


;; SOURCE: https://github.com/cimgui/cimgui/blob/docking_inter/backend_test/example_sdl_opengl3/main.c
(use-modules
  (guile-cimgui)
  (sdl2)
  (sdl2 events)
  (sdl2 video)
  (rnrs bytevectors)
  (system foreign))

;; Allocate memory for a bool and return a pointer
;; Set the bool value to true (1) or false (0)
(define show-demo (make-bytevector 1))
(bytevector-u8-set! show-demo 0 1)  ; Set to true

(sdl-init)
;; TODO: Somehow get access to the cimgui-impl functions by compiling it with imgui backends
(define window (make-window #:opengl? #t))

;(igCreateContext %null-pointer)
;(igStyleColorsDark %null-pointer)

(define running? #t)
(while running?
	   (let ((event (poll-event)))
		 (when event
		   (cond
			 ((quit-event? event)
			  (set! running? #f))
			 (else '()))))
	   (format #t "New frame~%")
	   ;(igImplOpenGLNewFrame)
	   ;(igNewFrame)
	   (format #t "Show demo window~%")
	   ;; (igShowDemoWindow (get-bytevector-data show-demo))
	   (format #t "Render~%")
	   ;; (igRender)
	   (format #t "Swap~%")
	   ;; (sql-gl-swap-window)
	   (format #t "Draw again~%"))
(sdl-quit))

(guile-cimgui/test))

