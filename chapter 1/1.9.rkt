#lang racket
(define (dec a)
  (- a 1))

(define (inc a)
  (+ a 1))

;recursion
;(+ 5 4)
;(+ 1 (+ 4 4))
;(+ 1 (+ 1 (+ 3 4)))
;(+ 1 (+ 1 (+ 1 (+ 2 4))))
;(+ 1 (+ 1 (+ 1 (+ 1 (+ 1 4)))))
;(+ 1 (+ 1 (+ 1 (+ 1 5))))
;(+ 1 (+ 1 (+ 1 6)))
;(+ 1 (+ 1 7))
;(+ 1 8)
;9
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;iteration
;(+ 5 4)
;(+ 4 5)
;(+ 3 6)
;(+ 2 7)
;(+ 1 8)
;9
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))