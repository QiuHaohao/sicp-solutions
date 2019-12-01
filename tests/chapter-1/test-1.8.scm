(load "test-manager/load.scm")

(load "chapter-1/1.8.scm")

(in-test-group
  test-curt-iter

  (define-test (curt-iter)
    "Test that curt-iter gives a good enough estimation of cubic root of x"
    (check 
      (good-enough? (curt-iter 1 2)
                    2))
    (check 
      (good-enough? (curt-iter 1 0.000005)
                    0.000005))
    (check 
      (good-enough? (curt-iter  10000 100000000000)
                    100000000000))))

(run-registered-tests)