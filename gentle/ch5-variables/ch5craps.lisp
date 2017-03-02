#|

 Author: p1le <anon@tymoon.eu>
 Chapter 5 - Variables and Side Effects
 Keyboard Exercise 
 Remake of game of craps I did previously 
|#

(defun throw-die ()
  "Simulating a die throw."
  (+ (random 7) 1))

(defun throw-dice ()
  "Throws two dice"
  (list (throw-die) (throw-die)))

(defun snake-eyes-p (throw)
  (let ((snake-eyes '(1 1)))
    (eql throw snake-eyes)))

(defun boxcars-p (throw)
  (let ((boxcars '(6 6)))
    (eql throw boxcars)))

