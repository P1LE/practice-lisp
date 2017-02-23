#|
 Chapter 4 exercises
 Author: p1le <anon@tymoon.eu>
|#

;;Exercise 4.1
(defun make-even (x)
  (if (oddp x) (+ 1 x) x))

;;Exercise 4.2
(defun furthur (x)
  (if (evenp x) (incf x) (decf x)))

;;Exercise 4.3
(defun my-not (x)
  (if (not x) t nil))

;;Exercise 4.4
(defun ordered (x y)
  (if (< x y) (list x y) (list y x)))

;;Exercise 4.6
(defun my-abs (x)
  (cond ((> x 0) x)
        ((< x 0) (- x))))

;;Exercise 4.8
(defun emphasize3 (x)
  (cond ((equal (first x) 'good) (cons 'great (rest x)))
        ((equal (first x) 'bad ) (cons 'awful (rest x)))
        (t (cons 'very x))))

;;Exercise 4.9
(defun make-odd (x)
  (cond ((not (oddp x)) (+ 1 x))
        (t x)))

;;Exercise 4.10
(defun constrain (x max min)
  (cond ((> x min) min)
        ((< x max) max)
        (t x)))

;;same as the constrain function except with a nested if
(defun if-constrain (x max min)
  (if (> x min) min
      (if (< x max) max x)))
