{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 19
    Description : Rotate a list N places to the left.
    License     : MIT (See LICENSE file)
-}

rotate :: (Ord a) => [a] -> Int -> [a]
rotate l@(x:xs) n = case (n `compare` 0) of
    GT -> rotate (xs ++ [x])           (n - 1)
    LT -> rotate ((last l) : (init l)) (n + 1)
    EQ -> l
