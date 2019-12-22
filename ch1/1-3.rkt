#lang racket

(define (square x) (* x x))

(define (proc a b c)
	(cond ((and (< a b) (< a c)) (+ (square b) (square c)))
		  ((and (< b a) (< b c)) (+ (square a) (square c)))
		  ((and (< c b) (< c a)) (+ (square a) (square b)))
	)
)
