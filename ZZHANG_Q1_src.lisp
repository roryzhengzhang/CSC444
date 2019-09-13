(defun count-occur (s lst)
  (cond ((not (atom s)) (error "s is not a valid argument"))
	((atom lst) (if (equal s lst) 1 0))
	(t (+ (count-occur s (car lst)) (count-occur s (cdr lst))))
	)
 )
 
