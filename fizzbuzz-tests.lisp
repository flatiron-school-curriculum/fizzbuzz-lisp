(defpackage :fizzbuzz-test
  (:use :cl :lisp-unit :fizzbuzz))
(in-package :fizzbuzz-test)
 
(define-test fizzbuzz
  (assert-equal (fizzbuzz("3")) ("Fizz"))
  (assert-equal (fizzbuzz("5")) ("Buzz"))
  (assert-equal (fizzbuzz("15")) ("FizzBuzz"))
)