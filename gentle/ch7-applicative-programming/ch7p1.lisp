#|
 Author: p1le
 Chapter 7 - Applicative Programming
|#

;;;7.1 - adds 1 to each element in a list
;;; (mapcar #'add1)
(defun add1 (n)
  (+ n 1))

;;;7.2 - Use the MAPCAR function to get their ssn
;;; (mapcar #'third daily-planet)
(defvar daily-planet
  '((olsen jimmy 123-76-4535 cub-reporter)
    (kent  clark 089-52-6787 reporter)
    (lane  lois 951-26-1438  reporter)
    (white perry 355-16-7439 editor)))

;;;7.3 - Write an expression that checks if the list is zero using MAPCAR
;;;(mapcar #'zerop '(2 0 3 4 0 -5 -6))

;;;7.4 - Write a function that checks if a number is greater than 5 and use MAPCAR to check a list of numbers.
(defun greater-than-five-p (n)
  (if (> n 5) t nil))
