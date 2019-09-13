(load "~/Documents/SBCL/Assignment 0/ZZHANG_Q1_src.lisp")
(format t "testcase 1: ~% input s: x lst: ((f x) y (((x z) () x))) ~% expected output: 3 real output: ~A ~%" (count-occur 'x '((f x) y (((x z) () x)))));test case 1: s=x, lst=((f x) y (((x z) () x))); expected output: 3; real output: 3

(format t "testcase 2: ~% input s: x lst: ((x(x y (x b))) x (x y)) ~% expected output: 5 real output: ~A ~%" (count-occur 'x '((x(x y (x b))) x (x y))));test case 2: s=x, lst=((x(x y (x b))) x (x y)); expected output: 5; real output: 5

(format t "testcase 3: ~% input s: y lst: (((x y u) (x r)) (x r) ((x b y) (t x u)) (t y) y) ~% expected output: 4 real output: ~A ~%" (count-occur 'y '(((x y u) (x r)) (x r) ((x b y) (t x u)) (t y) y)));test case 2: s=x, lst=((x(x y (x b))) x (x y)); expected output: 5; real output: 5
