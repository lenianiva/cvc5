; EXPECT: sat
(set-option :incremental false)
(set-logic ALL)

(declare-fun x () (Set (Tuple Int Int)))
(declare-fun y () (Set (Tuple Int Int)))
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun d () Int)
(assert (= a c))
(assert (= a d))
(assert (member (mkTuple 1 c) x))
(assert (member (mkTuple 2 d) x))
(assert (member (mkTuple a 5) y))
(assert (= y (tclosure x)))
(assert (member (mkTuple 2 5) y))
(check-sat)