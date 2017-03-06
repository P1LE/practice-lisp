#|
 Author: p1le <anon@tymoon.eu>
 Chapter 6 - List Data Structures
 Exercise 6.6
|#

;;These functions return the last element of a list
(defun last-element (x)
  (first (last x)))

(defun last-element2 (x)
  (first (reverse x)))

(defun last-element3 (x)
  (and x ;;to handle NIL correctly
       (nth (- (length x) 1) x)))

;;Functions return the second to last element
(defun next-to-last (x)
  (second (reverse x)))

(defun next-to-last-too (x)
  (and (rest x) ;;to handle short lists
       (nth (- (length x) 2) x)))

(defun my-butlast (x)
  "Returns a list without it's last element"
  (reverse (rest (reverse x))))

(defun palindromep (x)
  "checks if a list is palindrome"
  (equal x (reverse x)))
