{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 15
    Description : Replicate the elements of a list a given number of times.
    License     : MIT (See LICENSE file)
-}

copyN :: [a] -> Int -> [a]
copyN lst y = foldl (\acc x -> acc ++ replicate y x) [] lst
