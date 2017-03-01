#|

 Author: p1le
 Chapter 5: Variables and Side Effects

|#

;;Exercise 5.1 - Rewrite the POOR-STYLE function

(defun good-style (p)
  (let ((q (+ p 5)))
    (format t "The number is now ~d" q)))
