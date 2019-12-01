; It goes into an infinite recursion.
; new-if is just another procedure,
; and is evaluated differently from the way the special
; for if is evaluated. Because Scheme interpreter uses
; applicative-order evaluation, each evaluation of 
; sqrt-iter results in an expression with a sqrt-iter
; in its operands, which means it will never end:
;
; (sqrt-iter guess x)
;
; (new-if (good-enough? guess x)
;     guess
;     (sqrt-iter (improve guess x) x))

; (new-if (good-enough? guess x)
;   guess
;   (new-if (good-enough? (improve guess x) x)
;     (improve guess x)
;     (sqrt-iter (improve (improve guess x) x) x)))
;
; ...

(load "chapter-1/newton.scm")

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))