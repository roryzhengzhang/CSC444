(defun match(pred fact)
  (cond ((null fact) nil)
        ((not (equal (car pred) (car fact))) nil ) ; If the predicates of pred and fact aren't equal, then it won't match
	((equal (list-length (rest pred)) (list-length (rest fact))) t) ;If they have the same number of arguments, it matches
  )
)

(defun find-match(pred facts)
  (cond ((= 1 (list-length pred)) t)
	(t (car (member pred facts :test #'match)))
  )
 )
