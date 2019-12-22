(define (p) (p))
(define (test x y)
	(if (= x 0) 0 y))

(test 0 (p))

; Applicative-order evaluation - evaluate the arguments and then apply

(test 0 (p)) ; On evaluating the argument (p), this task never finishes.
(p)
(p)
.
.
.


; Normal-order evaluation - fully expand and then reduce

(test 0 (p))
(if (= 0 0) 0 (p))
(if (#t) 0 (p))
0
