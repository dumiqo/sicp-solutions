#lang racket
(define (square x) (* x x))
(define (sum-of-square x y) (+ (square x) (square y)))
(define (getSumOfMax x y z) (cond ((and (> x z) (> y z)) (sum-of-square x y)) ((and (> x y) (> z y)) (sum-of-square x z)) (else (sum-of-square z y)) ))