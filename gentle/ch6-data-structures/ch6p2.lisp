#|
 Author: p1le <anon@tymoon.eu>
 Chapter 6 - List Data Structures
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

(defun make-palindrome (x)
  "Makes a list palindrome"
  (append (reverse x) x))

;;checks if a list contains "the, a or an"
(defun contains-the-article (sent)
  (intersection sent '(the and an)))

(defun contains-the-article2 (sent)
  (or (member 'the sent)
      (member 'a sent)
      (member 'an sent)))

(defun contains-the-article3 (sent)
  (not (and (not (member 'the sent))
            (not (member 'a sent))
            (not (member 'an sent)))))

(defun add-vowels (x)
  "adds the vowels to a list"
  (union x '(a e i o u)))

(defun my-subset (x y)
  (null (set-difference x y)))

(defun set-equal (x y)
  "checks is the lists are equal"
  (and (subsetp x y)
       (subsetp y x)))

(defun proper-subset (x y)
  "checks if a list is proper subset"
  (and (subsetp x y)
       (not (subsetp y x))))
