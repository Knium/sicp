(define (same-parity . l) 
  (define head (car l))
  (define (same-parity-iter l)
    (if (not (pair? l)) (list)
      (if (eq? (modulo head 2) (modulo (car l) 2))
        (cons (car l) (same-parity-iter (cdr l)))
        (same-parity-iter (cdr l)))))
  (same-parity-iter l))

(print (same-parity 1 2 3 4 6 5 7)))
