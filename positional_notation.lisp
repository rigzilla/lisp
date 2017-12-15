;function to return a decimal value in a given base <= 10


;recursive function to convert the given number
(defun pos_not (a b)
                   (if
                     (< a b) 

                     (append (list a))
                   
                    (append (list
                     (mod a b))
                     (pos_not (floor(/ a b)) b)
                     )))


;converts a list of numerical values to a integer regarding the exponant
(defun make_int (xs exp)
                   (if
                     (null xs) 

                     0
                   
                    (+
                    (*(first xs) (expt 10 exp))
                    (make_int (rest xs) (+ exp 1))
                    )))


;main function to call pos_not and make_int
(defun pos_not_main (x b)
                   (make_int (pos_not x b) 0)
                   )


;testing the fucntion on example values and printing the result                   
(print(pos_not_main 42 2))
