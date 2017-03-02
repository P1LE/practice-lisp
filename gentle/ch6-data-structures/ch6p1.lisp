#|
 Author: p1le <anon@tymoon.eu>
 Chapter 6 - List Data Structures
|#

;;Exercise 6.5 - What are the results of these functions?
(defvar line '(roses are red))

;;(reverse line) => (RED ARE ROSES)
;;(first (last line)) => RED
;;(nth 1 line) => ARE
;;(reverse (reverse line)) => (ROSE ARE RED)
;;(append line (list (first line))) => (ROSES ARE RED ROSES)
;;(append (last line) line) => (RED ROSES ARE RED)
;;(list (first line) (last line)) => (ROSES (RED))
;;(cons (last line) line) => ((RED) ROSES ARE RED)
;;(remove 'are line) => (ROSES RED)

