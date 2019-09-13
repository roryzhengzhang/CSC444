(defun deriv1(mono)
  (cond ((not (numberp (car mono))) (error "c should all be numerical") )
	((not (numberp (car (cdr (cdr mono))))) (error "i should all be numberical"))
	((equal (car mono) 0) 0)
	((equal (car (cdr (cdr mono))) 0) (car mono))
	(t (list (* (car mono) (car (cdr (cdr mono)))) (car (cdr mono)) (- (car (cdr (cdr mono))) 1)))
	)
  )
  
