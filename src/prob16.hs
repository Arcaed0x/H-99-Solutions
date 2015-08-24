{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 16
    Description : Drop every N'th element from a list.
    License     : MIT (See LICENSE file)
-}

dropEveryN :: [a] -> Int -> [a]
dropEveryN [] _  = []
dropEveryN lst y = dropOn lst y
  where dropOn [] _     = []
        dropOn (x:xs) n = if n == 1
                          then dropOn xs y
                          else x : dropOn xs (n - 1)
