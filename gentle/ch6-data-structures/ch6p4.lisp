#|
 author: p1le <anon@tymoon.eu
 Chapter 6 - List Data Structures
|#

(defvar books
  '((war-and-peace . leo-tolstoy)
    (toy-story     . leo-tolstoy)))

(defun who-wrote (x)
  (rest (assoc x books)))

(defun what-wrote (x)
  (rassoc x books))
