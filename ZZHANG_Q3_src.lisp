(defun my-flatten(lst)
  (cond ((null lst) nil) ;end of the lst
	((atom lst) (list lst)) ;if lst is atomic, just return lst itself
	(t (append (mapcan #'my-flatten lst))) ;use mapcan to apply my-flatten on each element of lst, and then concatenate their flatten results to the result list.
	)
)
