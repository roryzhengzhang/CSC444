(defun store-fact (fact ht)
	(setf (gethash fact ht) fact) ;store the complete predication anyway
	(cond ((null (car (gethash (car fact) ht))) (setf (gethash (car fact) ht) (list fact))) ;if the predicate key doesn't exist, then create a new list for it
	(t (let ((mult-list (gethash (car fact) ht))) (push fact mult-list) (setf (gethash (car fact) ht) (remove-duplicates mult-list :test #'equal)))) ;if the predicate key has already existed, then append the fact to the list
	) ;end of cond
)

(defun store-facts (facts ht)
	(mapcar #'(lambda (x) (store-fact x ht)) facts)
) 
