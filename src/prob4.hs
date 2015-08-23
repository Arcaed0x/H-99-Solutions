{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwk (ARCAED0X)
    Problem     : 4
    Description : Find the number of elements of a list. 
-}

elems :: [a] -> Int
elems lst = sum [1 | _ <- lst]
