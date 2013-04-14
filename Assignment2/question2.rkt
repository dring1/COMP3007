#lang racket
;Devon Ring
;100801142

;exchange rates are all to american dollars

(define (Money amount symbol xchg)
 (cons amount (cons symbol xchg)))

(define (get-amount m) (car m))
(define (get-symbol m) (cadr m))
(define (get-xchg m) (cddr m))

(define (convert-money m new-symbol)
  (Money (/ (*(get-amount m)(get-xchg m)) (cdr new-symbol)) (car new-symbol) (cdr new-symbol)))

(define (add-money m m2)
  (Money(/ (+ (* (get-amount m)(get-xchg m))(*(get-amount m2)(get-xchg m2))) (get-xchg m)) (get-symbol m) (get-xchg m)))
(define (subtract-money m m2)
  (Money(/ (- (* (get-amount m)(get-xchg m))(*(get-amount m2)(get-xchg m2))) (get-xchg m)) (get-symbol m) (get-xchg m)))


(define x (Money 100 'cdollar 1.08))
(define y (Money 100 'euro 1.76))

(add-money x y)
(subtract-money x y)

(convert-money x (cons 'yen .001))