{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 9
    Description : Pack consecutive duplicates of list elements into sublists.
                  If a list contains repeated elements they should be
                  placed in separate sublists.
    License     : MIT (See LICENSE file)
-}

sameCongregate :: (Eq a) => [a] -> [[a]]
sameCongregate []  = []
sameCongregate lst = firstAlikeElems : sameCongregate restOfList
  where restOfList            = drop (length firstAlikeElems) lst
        firstAlikeElems       = takeAlikeElems lst
        takeAlikeElems [x]    = [x]
        takeAlikeElems (x:xs) = if x == (head xs)
                                  then x : takeAlikeElems xs
                                  else [x]
