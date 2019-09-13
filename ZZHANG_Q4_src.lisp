(defun nest-equal (l1 l2)
  ;(format t "l1: ~A, l2: ~A ~%" l1 l2)
  (cond ((and (null l1) (null l2)) t)
	((and (and (atom l1) (atom l2)) (equal l1 l2)) t)
	((and (and (atom l1) (atom l2)) (not (equal l1 l2))) nil) ;in the case that both of arguments are atom
	((or (atom l1) (atom l2)) nil) ;in the case that one is atom and another is list
	((and (nest-equal (rest l1) (rest l2)) (nest-equal (first l1) (first l2))) t) ;in the case that both l1 and l2 are list
	(t nil)
  )
)


(defun my-intersection (l1 l2)
  (let ((results '()))
    (dolist (x l1) (dolist (y l2)
      (if (nest-equal x y) (push x results))
      ))
    results ;(format t "Intersection: ~A ~%" results)
   ))
