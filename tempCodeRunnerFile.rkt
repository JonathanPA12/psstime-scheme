(define (sumatory a n)
(if (> a n)
0
(+ (/ (+ a 1) (+ (* 2 (expt a 2)) (* 7 a) -3)) (sumatory (+ a 1) n))))

(sumatory 1 10)