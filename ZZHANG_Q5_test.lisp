(load "~/Documents/SBCL/Assignment 0/ZZHANG_Q5_src.lisp")
(format t "testcase 2: ~% input pred: (on ?x ?y) facts: ((on-table B2 B3) (on-door B3 B5) (on B5 B7) (on A2 A6)) ~% expected output: (on B5 B7) real output: ~A ~%" (find-match '(on ?x ?y) '((on-table B2 B3) (on-door B3 B5) (on B5 B7) (on A2 A6)) ) )

(format t "testcase 2: ~% input pred: (remember) facts: ((on-table B2 B3) (on-door B3 B5) (on B5 B7) (on A2 A6)) ~% expected output: T real output: ~A ~%" (find-match '(remember) '((on-table B2 B3) (on-door B3 B5) (on B5 B7) (on A2 A6)) ) )

(format t "testcase 2: ~% input pred: (on ?x ?y ?z) facts: ((on-table B2 B3) (on-door B3 B5) (on B5 B7) (on A2 A6 A8)) ~% expected output: (on A2 A6 A8) real output: ~A ~%" (find-match '(on ?x ?y ?z) '((on-table B2 B3) (on-door B3 B5) (on B5 B7) (on A2 A6 A8)) ) )
