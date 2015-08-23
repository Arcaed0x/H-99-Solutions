{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 4
    Description : Find the number of elements of a list.
    License     : MIT (See LICENSE file)
-}

elems :: [a] -> Int
elems lst = sum [1 | _ <- lst]
