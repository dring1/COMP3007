#lang racket

;Devon Ring
;100801142

(require racket/mpair)

;Constructors
(define (make-avl-tree node)  (mlist node null null))
(define (build-avl-tree root left right) (mlist root (make-avl-tree left) (make-avl-tree right)))
;(define (build-avl-tree root left right) (mlist root left right))

;accessors
(define (root t) (if (mpair? t)(mcar t) t))
(define (left-subtree t) (mlist-ref t 1))
(define (right-subtree t)(mlist-ref t 2))
(define (empty-avl? t) (null? (root t)))
(define (super-root t) (if (mpair? t) (super-root(root t)) t))
(define (left-subtree2 t) (if (mlist? t) (mlist-ref t 1) '()))
(define (right-subtree2 t) (if (mlist? t) (mlist-ref t 2) '()))


(define (set-root! t v) (set-mcar! (root t) v))
(define (set-left! t v) (set-mcar! (left-subtree t) v))
(define (set-right! t v) (set-mcar! (right-subtree t) v))


;Insert Function
(define (insert x t)
(display (super-root t))
  (cond
    ((empty-avl? t) 
     (make-avl-tree x)))
    ((> x (super-root t))
     (build-avl-tree  (root t) (left-subtree t) 
               (insert x (right-subtree t))))
    ((< x (root t))
     (build-avl-tree (root t) (insert x (left-subtree t)) 
               (right-subtree t)))
  (balance t))

(define (height n t)
  (height-helper n t 0))

(define (height-helper n t h)
  (cond ((empty-avl? t) h)
        ((eq? n (root t)) h)
        ((> n (root t)) 
         (height-helper n (right-subtree t) (+ h 1)))
        ((< x (root t))
         (height-helper n (left-subtree t) (+ h 1)))))
          
(define (balance t) (display ""))

;lookup value
(define (lookup n t)
  (cond ((empty-avl? t) '())
        ((= n (super-root t)) (build-avl-tree n (left-subtree2 t)(right-subtree2 t)))
        ((> n (super-root t)) 
         (lookup n (right-subtree2 t)))
        ((< n (super-root t)) 
         (lookup n (left-subtree2 t)))
  (else (display '()))))


;print as list
(define (print-as-list t) 
  (display (mlist->list t)))



;print in order of traversal
(define (print-inorder t) 
  (cond ((not (null? t)) 
         (display "(")
         (print-inorder (left-subtree2 t))
         (display (root t))
         (print-inorder (right-subtree2 t))
         (display ")"))))

(define x (build-avl-tree 5 4 99))


