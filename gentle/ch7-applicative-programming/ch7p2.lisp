#|
 author: p1le <anon@tymoon.eu>
 Chapter 7 - Applicative Programming
|#

(defun flip-element (list)
  "This function flips up to down and down to up "
  (mapcar #'(lambda (e)
              (if (equal e 'up) 'down 'up))
          list))

;;7.8
;;Write a function that takes two inputs, X and K, and returns
;;the first number in the list X that is roughly equal to K.
;;Lets say that "roughly equal" means no less than K - 10 and no more than K + 10.
(defun roughly-equal (e k)
  (and (not (< e (- k 10)))
       (not (> e (+ k 10)))))

(defun find-first-element (x k)
  (find-if #'(lambda (e) (roughly-equal e k))
           x))

;;7.9
;;Write a function FIND-NESTED that returns the first element of a list
;;that is itself a non-NIL list.
(defun find-nested (list)
  (find-if #'(lambda (e)
               (and (listp e) (not (null e))))
           list))
