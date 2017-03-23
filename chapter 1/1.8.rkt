#lang racket
(define (square x) (* x x))
(define (cubic x) (* x x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (percent-of x(abs (- (cubic guess) x))) 0.000001))

(define (percent-of x y)
  (/ y (/ x 100.0) ))

(define (sqr x) (sqrt-iter 1.0 x))