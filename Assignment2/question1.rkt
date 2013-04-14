#lang racket
;Devon Ring
;100801142

(define (cons a b)
  (* (expt 2 a)(expt 3 b)))

(define (log n x)
  (if (= 0 (remainder n x))
      (+ 1 (log (/ n x) x))
      0))

(define (car x)
      (log x 2))

(define (cdr x)
      (log x 3))