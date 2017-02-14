#|
  Author: p1le <anon@tymoon.eu>
  Chapter 3 practise problems in: Common Lisp: A Gentle Introduction to Symbolic Computations.
|#

  
#|Checks to see if the first argument is greater than the second
Only an unevaluated list can be passed
|#
(defun longer-than (x y)
  (< (length x)
     (length y)))

;;Adds the length of the list to the list itself.
(defun addlength (x)
  (cons (length (list x)) (list x)))
