(load "test-manager/load.scm")

(load "chapter-1/1.3.scm")

(in-test-group
  sum-of-sqr-of-larger-two

  (define-test (test-sum-of-sqr-of-larger-two)
    "Check that sum of square the two larger numbers is returned"
    (define expected-sum-of-sqr-of-larger-two (+ (square 2) (square 3)))
    (check 
      (= 
        (sum-of-sqr-of-larger-two 1 2 3)
        expected-sum-of-sqr-of-larger-two))))

(run-registered-tests)