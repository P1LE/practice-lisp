#|

 Author: p1le <anon@tymoon.eu>
 Chapter 5: Variables and Side Effects

|#

;;Exercise 5.1 - Rewrite the POOR-STYLE function

(defun good-style (p)
  (let ((q (+ p 5)))
    (format t "The number is now ~d" q)))

;;5.2: What is a side effect?
;;Assignment
;;5.3: What is the difference between a local and global variable
;;local variables are limited to scope that were created in. Global variables are not limited and can be called from outside a form.
;;5.4: Why must SETF be a macro function instead of a regular function?
;;If it was a regular function it would try to evaluate the argument which isn't what we want.
;;5.5 - Are LET and LET* equivalent when you are only creating one local variable?

(defun test-the-let (x)
  (let ((q (incf x)))
    (format t "This is what the number is now: ~d" q)))
;; Yes apparently it is the same.
