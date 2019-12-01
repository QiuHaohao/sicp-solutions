(load "test-manager/load.scm")

(load "[FILENAME]")

(in-test-group
  test-group

  (define-test (test-name)
    "TEST DESCRIPTION"
    (check 
      (= 
        (+ 1 1)
        2))))

(run-registered-tests)