; (if (> b 0) + -) evaluates to + if b is greater than 0,
; otherwise it is evaluated to -, which means this procedure
; will be evaluated to a + b if b is greater than 0, and
; a - b if b is smaller than 0. We can also say that it
; evaluates to a plus the absolute value of b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
