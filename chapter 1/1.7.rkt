#lang racket
(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (percent-of x guess)) 0.01)

(define (percent-of x y)
  (/ (/ x 100.0) y))

(define (sqr x) (sqrt-iter 1.0 x))