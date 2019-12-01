; Decimal numbers are represented using floating point numbers, 
; and the accuracy of floating point numbers varys with how big
; the number is. For some large numbers p, there might not be 
; another floating point number within [p - 0.001, p + 0.001].
; In this case, the algorithm will not terminate.

; On the other hand, if the input is a small number q, checking
; that the square of the sqrt is within [q - 0.001, q + 0.001]
; is not particularly meaningful. For example, 

; (sqrt-iter 0 0.0005)

; evaluates to 0 because (abs (- (square 0) 0.0005)) is 0.0005,
; which is smaller than 0.001. However, obviously 0 is not what
; we want to find with sqrt-iter.

(load "chapter-1/newton.scm")

(define (close-enough? guess guess-improved)
  (< (abs (- guess guess-improved)) (* 0.001 guess)))

(define (sqrt-iter guess x)
  (define guess-improved (improve guess x))
  (if (close-enough? guess guess-improved)
    guess
    (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) (* 0.001 x)))