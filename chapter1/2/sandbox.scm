(define (fact-rec x)
    (if (= x 1)
        x
        (* x (factorial (- x 1)))))

(define (fact x)
    (fact-iter 1 1 x))
(define (fact-iter count product x)
    (if (> count x)
        product
        (fact-iter (+ count 1) (* count product) x)))

(define (count-change amount) (cc amount 5))
    (define (cc amount kinds-of-coins)
        (cond ((= amount 0) 1)
            ((or (< amount 0) (= kinds-of-coins 0)) 0)
            (else (+ (cc amount (- kinds-of-coins 1))
            (cc (- amount (first-denomination kinds-of-coins))
                kinds-of-coins)))))
    (define (first-denomination kinds-of-coins)
        (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))