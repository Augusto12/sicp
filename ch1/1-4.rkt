; Procedure:

(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b))

; As an example, let a = 2 and b = 3. The following sequence ilustrates the steps in procedure's application:

(a-plus-abs-b 2 3)

((if (> 2 0) + -) 2 3)

((if (#t) + -) 2 3)

(+ 2 3)

5 
