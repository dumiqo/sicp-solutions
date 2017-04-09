#lang racket
(define (f n) (if (< n 3) n (+ (f (- n 1)) (f (- n 2)) (f (- n 3))))) ; recursive

(define (f-iter n) (f-inner-iter n 1 0))
(define (f-inner-iter n current sum) 
  (if (> n current) 
      (f-inner-iter n 
                    (+ 1 current)
                    (if (< current 3) current (+ (- sum 1) (- sum 2) (- sum 3))))
      sum ))