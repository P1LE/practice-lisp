#|
  Author: p1le <anon@tymoon.eu>
  Chapter 3 practise problems in: Common Lisp: A Gentle Introduction to Symbolic Computations.
|#

;;Problem 3.11
(defun longer-than (x y)
  (< (length x)
     (length y)))

;;Problem 3.12
;;Can't figure this shit out
;;Come back to it later



;;Review Exercises

;;3.18 - Eval Notation is much easier to understand. Box notation is fine
;;when you're learning, but as programs get bigger so will the boxes

;;3.19
;;
;;(cons 'graphs '(of wrath)) -> (GRAPHS OF WRATH)
;;
;;(list t 'is 'not nil) -> (T IS NOT NIL)
;;
;;(first '(list moose goose)) -> LIST
;;
;;(first (list 'moose 'goose)) -> MOOSE
;;
;;(cons 'home ('sweet 'home)) -> WRONG. Illegal function call
;;(cons 'home '(sweet home))  -> (HOME SWEET HOME)

;;3.22
;;
;;checks to see if the first element is equal to it's second argument
(defun firstp (x y)
  (eql x (first y)))

;;adds 1 the second element of a list. It /must/ be a number
(defun min-add1 (x)
  (+ 1 (second x)))

;;Converts Fahrenheit to Celsius 
(defun f-to-c (n)
  (/ (* 5 (- n 32)) 9.0))

;;Converts Celsius to Fahrenheit
(defun c-to-f (n)
  (+ (/ (* 5 n) 9.0) 32))

