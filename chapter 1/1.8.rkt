#lang racket
(define (square x) (* x x))
(define (cubic x) (* x x x))

(define (cbr-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbr-iter (improve guess x)
                 x)))

(define (improve  y x)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (good-enough? guess x)
  (< (percent-of x (abs (- (cubic guess) x))) 1))

(define (percent-of x y)
  (/ y (/ x 100.0) ))

(define (cbr x) (cbr-iter 1.0 x))