#|
 Chapter 4 - Conditionals exercises
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
  (cond ((eql (first x) 'good) (cons 'great (rest x)))
        ((eql (first x) 'bad ) (cons 'awful (rest x)))
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

;;Exercise 4.11
;;Checks to see which position is zero
(defun firstzero (x)
  (cond ((equal (first x) 0) 'first)
        ((equal (second x) 0) 'second)
        (t 'third)))

;;Exercise 4.12
;;cycle adds 1 to each number, but if it's 99 or over it resets back to 1
(defun cycle (n)
  (cond ((>= n 99) 1)
        (t (incf n))))

;;Exercise 4.13
(defun howcompute (x y z)
  (cond ((equal (+ x y) z) 'sum-of)
        ((equal (* x y) z) 'product-of)
        (t '(beats me))))

;;Exercise 4.15
;;Checks if x is greater than y
(defun geq (x y)
  (or (and (> x y) t)
      (and (< x y) nil)))

;;Exercise 4.16
(defun sdd (n)
  (or (and (oddp n)  (> n 0) (* n n))
      (and (evenp n) (< n 0) (* n 2))
      (/ n 2)))

;;Exercise 4.17
(defun boy-or-girl (x y)
  (cond ((or (eql x 'boy) (eql x 'girl))  (and (eql y 'child)))
        ((or (eql x 'man) (eql x 'woman)) (and (eql y 'adult)))))

;;Exercise 4.18
;;Rock,paper, and scissors game
(defun play (x y)
  (cond ((and (eql x 'rock) (eql y 'scissors)) 'first-wins)
        ((and (eql x 'scissors) (eql y 'paper)) 'first-wins)
        ((and (eql x 'paper) (eql y 'rock)) 'first-wins)
        (t 'second-wins)))

;;Exercise 4.19-21 SKIPPED

;;Exercise 4.22
;;Checks to see if the water is boiling using 'cond'
;;Checks to see if the symbol is equal to either temperature reading. Then checks if it's at the boiling point.
(defun boilingp (x s)
  (cond ((eql x 'fahrenheit) (> s 212))
        ((eql x 'celsius) (> s 100))))
