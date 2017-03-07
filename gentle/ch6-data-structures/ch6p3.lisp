#| 
 Author: p1le <anon@tymoon.eu>
 Chapter 6: List Data Structures
 6.26 - Mini Keyboard Exercise
|#

(defun right-side (x)
  "returns the right part of the list"
  (rest (member '-vs- x)))

(defun left-side (x)
  "returns the left part of the list"
  (right-side (reverse x)))

(defun count-common (x)
  "returns a list the number of elements each have in common"
  (length (intersection (right-side x)
                        (left-side x))))

(defun compare (x)
  "returns a list of common features"
  `(,(count-common x) common features))
