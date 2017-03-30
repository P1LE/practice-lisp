#|
 author: p1le <anon@tymoon.eu>
 Chapter 7: Applicative Programming
|#

#|
This exercise we will write a program to transpose
a song from one key to another.
|#
(defvar note-table
  '((c         .  1)
    (c-sharp   .  2)
    (d         .  3)
    (d-sharp   .  4)
    (e         .  5)
    (f         .  6)
    (f-sharp   .  7)
    (g         .  8)
    (g-sharp   .  9)
    (a         . 10)
    (a-sharp   . 11)
    (b         . 12)))

(defun numbers (list)
  (mapcar #'(lambda (e)
              (cdr (assoc e note-table)))
          list))

(defun notes (list)
  (mapcar #'(lambda (e)
              (car (rassoc e note-table)))
          list))


(defun raise (n list)
  (mapcar #'(lambda (e) (+ e n))
          list))

(defun normalize (list)
  (mapcar #'(lambda (e)
              (cond ((< e 1) (+ e 12))
                    ((> e 12) (- e 12))
                    (t e)))
          list))

(defun transpose (n x)
  (notes (normalize (raise n (numbers x)))))
