(defun half (n)
  (format t "Half of ~d is: " n)
  (/ n 2.0))

(defun cube (n)
  (format t "The cube of ~d is: " n)
  (* n n n))

(defun onemorep (n)
  (format t "One more of ~d is: " n)
  (incf n))

(defun pythag (x y)
  (sqrt (+ (* x x) (* y y))))

