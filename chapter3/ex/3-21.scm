(load "../queue.scm")

(define (print-queue q) (print (car q)))

(define q (make-queue))
(print-queue q)
(insert-queue! q 'a)
(print-queue q)
(insert-queue! q 'b)
(print-queue q)
(delete-queue! q)
(print-queue q)
(delete-queue! q)
(print-queue q)
; ()
; (a)
; (a b)
; (b)
; ()

