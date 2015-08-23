{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwk (ARCAED0X)
    Problem     : 1
    Description : Find the last element of a list.
-}

getLast :: [a] -> a
getLast [x] = x
getLast (_ : xs) = getLast xs
