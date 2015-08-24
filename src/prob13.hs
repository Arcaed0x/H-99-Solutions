{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 13
    Description : Run-length encoding of a list (direct solution).
    License     : MIT (See LICENSE file)
-}

data ListElemSize a = Multiple Int a | Single a
    deriving (Show)

minify :: (Eq a) => [a] -> [ListElemSize a]
minify []  = []
minify [x] = [Single x]
minify lst = convertList lst 0
  where convertList [x,y] acc  = if x == y
                                 then (Multiple (acc + 2) x):[]
                                 else (Single x):(Single y):[]
        convertList (x:xs) acc = if x == (head xs)
                                 then convertList xs newAcc
                                 else checkedAcc : convertList xs 0
                                   where newAcc     = succ acc
                                         checkedAcc = if newAcc == 1
                                                      then (Single x)
                                                      else (Multiple newAcc x)
