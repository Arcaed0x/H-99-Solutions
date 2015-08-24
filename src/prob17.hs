{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 17
    Description : Split a list into two parts; the length of the first part is given.
    License     : MIT (See LICENSE file)
-}

breakAt :: [a] -> Int -> ([a] , [a])
breakAt lst n = (firstPart, secondPart)
  where firstPart  = take n lst
        secondPart = drop (length firstPart) lst
