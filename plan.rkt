;; YOUR CODE HERE
(define (myinterpreter x)
;;
#t
)

(myinterpreter '(
    (prog 5)
    (prog (myadd (myadd 7 (myskip (mymul 4 5))) (mymul 2 5)))
    (prog (mylet z (myadd 4 5) (mymul z 2)))
    (prog (mylet a 66 (myadd (mylet b (mymul 2 4) (myadd 2 b)) (mymul 2 a))))
    (prog (mylet x 66 (myadd (mylet x (mymul 2 4) (myadd 2 x)) (mymul 2 x))))
   ))