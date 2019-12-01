(load "test-manager/load.scm")

(load "chapter-1/1.7.scm")

(in-test-group
  sqrt-iter

  (define-test (test-sqrt-iter)
    "Test that sqrt-iter gives a good enough estimation of square root of x"
    (check 
      (good-enough? (sqrt-iter 1 2)
                    2))
    (check 
      (good-enough? (sqrt-iter 1 0.000005)
                    0.000005))
    (check 
      (good-enough? (sqrt-iter  1000000 100000000000)
                    100000000000))))

(run-registered-tests)