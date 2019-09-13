(load "ZZHANG_Q3_src.lisp")
(format t "testcase 1: ~% input lst: (a (5 3 (2 4)) (hi 1 2 (2 (2 4)))) ~% expected output: (A 5 3 2 4 hi 1 2 2 2 4) real output: ~A ~%" (my-flatten '(a (5 3 (2 4)) ("hi" 1 2 (2 (2 4))))))
(format t "testcase 2: ~% input lst: (a (5 3 (2 4)) (hi 1 2 (2 (2 4)))) ~% expected output: (A 5 3 2 4 hi 1 2 2 2 4) real output: ~A ~%" (my-flatten '(a (5 3 (2 4)) ("hi" 1 2 (2 (2 4))))))
(format t "testcase 2: ~% input lst: ((a 3 5) () (2 e (2 3 (3 5)))) ~% expected output: (A 3 5 2 E 2 3 3 5) real output: ~A ~%" (my-flatten '((a 3 5) () (2 e (2 3 (3 5))))))
