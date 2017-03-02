#|
 Author: p1le <anon@tymoon.eu>
 Chapter 6 - List Data Structures
 Exercise 6.6
|#

(defun last-element (x)
  (first (last x)))

(defun last-element2 (x)
  (first (reverse x)))
