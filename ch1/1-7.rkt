; The good-enough? used is:

(define (good-enough? guess x)
	(< (abs (- (square guess) x) 0.001)))

; The problem pointed is:
; Let initial values x = 1*10^(-8) and guess = 1*10^(-20). 
; When we evaluate the good-enough?, we have:
; | sqrt(1*10^(-20) - 1*10^(-8) | < 0.001
; Due to this, the value returned will be guess = 1*10(-20).
; But this value is far from the value expected, that is 1*10^(-4) 

; The change proposed:

(define (good-enough? guess x)
	(< (abs (- (square guess) x) (/ guess 1000))))
