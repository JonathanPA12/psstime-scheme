#lang racket
; desarrollado en el entorno de vscode, con el plugin de racket
; para ejecutarlo, se debe hacer con el comando "racket" en la terminal
; o bien, con el comando "racket <nombre del archivo>" en la terminal
; está en ingles porque mi configuracón de vscode está en ingles y no me dio tiempo a cambiarla
;------------------------ Ejercio 1.a ------------------------
;ackerman function

(define (ack m n)
(if (= m 0)
(+ n 1)
(if (= n 0)
(ack (- m 1) 1)
(ack (- m 1) (ack m (- n 1))))))
(ack 1 10)
(ack 2 4)
(ack 3 3)

;------------------------ Ejercio 1.b ------------------------
;lineal function x^n, where n = 0 so x^0 = 1 and n = 1 so x^1 = x

(define (lineal x n)
(if (= n 0)
1
(* x (lineal x (- n 1)))))
(lineal 2 4)

;------------------------ Ejercio 2 ------------------------
;lucas number function, where if n = 0 so 0 and if n = 1 so 1 else if n > 1 so lucas(n-1) - lucas(n-2)

(define (lucas n)
(if (= n 0)
0
(if (= n 1)
1
(- (lucas (- n 1)) (lucas (- n 2))))))
(lucas 10)

;------------------------ Ejercio 3 ------------------------
;function for calculating  if Un = -1 so 2, if n = 0 so 1, if n = 1 so 0 else n >= 3 so 5U(n-1) - 9U(n-2) - 9U(n-3) 

(define (U n)
(if (= n -1)
2
(if (= n 0)
1
(if (= n 1)
0
(- (* 5 (U (- n 1))) (* 9 (U (- n 2))) (* 9 (U (- n 3))))))))
(U 3)
;------------------------ Ejercio 4 ------------------------
; degenerate quadratic equation function, where a, b, c are the coefficients and a = 0 so
; determined how many solutions has the equation, the function returns a list how many
; solutions has the equation or if not has solutions
(define (degenerate-quadratic a b c)
(if (= a 0)
(if (= b 0)
(if (= c 0)
'infinitaSolucion ; infinite solutions
'noSolucion) ; no solutions
(if (= c 0)
0
(/ (- 0 c) b)))
(let ([discriminant (- (* b b) (* 4 a c))])
(if (< discriminant 0)
'noSolucion ; no solutions
(if (= discriminant 0)
(/ (- 0 b) (* 2 a))
(list (/ (- (- 0 b) (sqrt discriminant)) (* 2 a)) (/ (+ (- 0 b) (sqrt discriminant)) (* 2 a)))))))) ; two solutions or more solutions

(degenerate-quadratic 1 2 1)
(degenerate-quadratic 1 2 3)
(degenerate-quadratic 1 0 0)
(degenerate-quadratic 0 1 0)

;------------------------ Ejercio 5 ------------------------

; calculate the salary of a worker, where salary= ht * sph - deduction
; if high-salary? : return true if salary > 100000
; if neto-salary : if high-salary? is true so high-salary reduce (salary - 0.2%) from the salary else  reduce the (salary - 0.1%)y
; ingresar : input ht and sph and  show the salary and neto-salary


(define (high-salary? salary)
(> salary 100000))

(define (neto-salary salary)
(if (high-salary? salary)
(- salary (* salary 0.2))
(- salary (* salary 0.9))))

(define (ingresar)
(define ht (read))
(define sph (read))
(define salary (* ht sph))
(define neto (neto-salary salary))

(printf "Su salario es: ~a

Su salario neto es: ~a

" salary neto))

(ingresar)

;------------------------ Ejercio 6 ------------------------

;LISP function that calculates the sumatory of where i = a, the sumatory ends in n, and the function to evaluate is 
; (i + 1)/(2i^2 + 7i - 3)

(define (sumatory a n)
(if (> a n)
0
(+ (/ (+ a 1) (+ (* 2 (expt a 2)) (* 7 a) -3)) (sumatory (+ a 1) n))))

(sumatory 1 10)

;------------------------ Ejercio 7 ------------------------
;using lambda function, calculate the division function 













