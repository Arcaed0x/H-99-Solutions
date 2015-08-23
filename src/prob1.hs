{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 1
    Description : Find the last element of a list.
    License     : MIT (See LICENSE file)
-}

getLast :: [a] -> a
getLast [x] = x
getLast (_:xs) = getLast xs
