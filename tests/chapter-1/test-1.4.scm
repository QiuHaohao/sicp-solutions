(load "test-manager/load.scm")

(load "chapter-1/1.4.scm")

(in-test-group
  a-plus-abs-b

  (define-test (test-a-plus-abs-b)
    "Check that the absolute value is added to a"
    (check 
      (= 
        (a-plus-abs-b 10 5)
        (+ 10 (abs 5))))
    (check 
      (= 
        (a-plus-abs-b 10 -5)
        (+ 10 (abs -5))))))

(run-registered-tests)