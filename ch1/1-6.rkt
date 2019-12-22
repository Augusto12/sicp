(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		  (else else-clause)
	)
)

; The problem with this substituion to special form "if" is that:
; when else-clause is a procedure, there will be an atempt to evalute
; the operator and operands before aplly the evaluation of new-if.
; 
; For the particular case of square roots, the procedure never terminates 
; because sqrt-iter will be continuosly called when evaluate the new-if's 
; arguments.
