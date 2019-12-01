; If the interpreter uses applicative-order evaluation,
; the operator and operands of (test 0 (p)) will be evaluated 
; before the operator is applied. However, p evaluates to 
; itself, which in turn evaluates to itself again. As a 
; result, the evaluation process will never stop:
;
; (test 0 (p))
; (test 0 (p))
; ...
;
; Scheme uses applicative-order evaluation, and if you try
; evaluating the expression in a Scheme interpreter, it indeed
; hangs.

; If the interpreter uses normal-order evaluation,
; the expression will be expanded until all the elements
; are primitive:
;
; (test 0 (p))
; (if (= 0 0) 0 (p))
; (if #t 0 (p))
; 0
;
; and it terminates.
;
; Note that if is a special form, and its evaluation 
; starts by evaluating the predicate, then it evaluates
; to the consequent if the predicate evaluates to #t,
; otherwise the alternative. 

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))