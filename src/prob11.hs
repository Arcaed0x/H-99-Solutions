{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 11
    Description : Modified run-length encoding.
    License     : MIT (See LICENSE file)
-}

-- | Data type from example.
data ListElemSize a = Multiple Int a | Single a
    deriving (Show)

classifyAlike :: (Eq a) => [a] -> [ListElemSize a]
classifyAlike l = [sizeCheck x | x <- groupedAlikeList]
  where groupedAlikeList = sameCongregate l
        sizeCheck x      = if (length x) > 1
                           then Multiple (length x)  (head x)
                           else Single (head x)

sameCongregate :: (Eq a) => [a] -> [[a]]
sameCongregate []  = []
sameCongregate lst = firstAlikeElems : sameCongregate restOfList
  where restOfList            = drop (length firstAlikeElems) lst
        firstAlikeElems       = takeAlikeElems lst
        takeAlikeElems [x]    = [x]
        takeAlikeElems (x:xs) = if x == (head xs)
                                then x : takeAlikeElems xs
                                else [x]
