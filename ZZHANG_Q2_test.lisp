(format t "ddddd  ~%")
(load "~/Documents/SBCL/Assignment 0/ZZHANG_Q2_src.lisp")
(format t "testcase 1: ~% input mono: (0 x 2) ~% expected output: 0 real output: ~A ~%" (deriv1 '(0 x 2)))
(format t "testcase 2: ~% input mono: (5 y 6) ~% expected output: (30 y 5) real output: ~A ~%" (deriv1 '(5 y 6)))
(format t "testcase 3: ~% input mono: (6 x 0) ~% expected output: 6 real output: ~A ~%" (deriv1 '(6 x 0)))
(format t "testcase 4: ~% input mono: (-1 x -5) ~% expected output: (5 x -6) real output: ~A ~%" (deriv1 '(-1 x -5)))
