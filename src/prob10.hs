{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 10
    Description : Run-length encoding of a list. Use the result of problem P09
                  to implement the so-called run-length encoding data
                  compression method. Consecutive duplicates of elements
                  are encoded as lists (N E) where N is the number of
                  duplicates of the element E.
    License     : MIT (See LICENSE file)
-}

countAlike :: (Eq a) => [a] -> [(Int, a)]
countAlike l = [(length x, head x) | x <- groupedAlikeList]
  where groupedAlikeList = sameCongregate l

sameCongregate :: (Eq a) => [a] -> [[a]]
sameCongregate []  = []
sameCongregate lst = firstAlikeElems : sameCongregate restOfList
  where restOfList            = drop (length firstAlikeElems) lst
        firstAlikeElems       = takeAlikeElems lst
        takeAlikeElems [x]    = [x]
        takeAlikeElems (x:xs) = if x == (head xs)
                                then x : takeAlikeElems xs
                                else [x]
