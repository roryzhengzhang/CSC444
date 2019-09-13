(load "~/Documents/SBCL/Assignment 0/ZZHANG_Q4_src.lisp")
(format t "testcase 1: ~% input lst1: (a f (a h) (a s (a g))) lst2: (f (a h) (a f (a g))) ~% expected output: ((A H) F) real output: ~A ~%" (my-intersection '(a f (a h) (a s (a g))) '(f (a h) (a f (a g)))) )

(format t "testcase 2: ~% input lst1: (a f (a h) (a s (a g))) lst2: (f (a h) (a f (a g))) ~% expected output: (((A (S F)) (A D))) real output: ~A ~%" (my-intersection '(a f (a h) (a s (a g))) '(f (a h) (a f (a g)))) )

(format t "testcase 3: ~% input lst1: (a f (s f ((s f) (a g)))) lst2: (f (a h) (a f (a g))) ~% expected output: ((S F ((S F) (A G)))) real output: ~A ~%" (my-intersection '(a f (a h) (a s (a g))) '(f (a h) (a f (a g)))) )
