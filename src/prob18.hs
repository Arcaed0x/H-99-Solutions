{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 18
    Description : Extract a slice from a list.
    License     : MIT (See LICENSE file)
-}

slice :: [a] -> Int -> Int -> [a]
slice lst from to  = take desiredFew $ drop firstFew lst
  where firstFew   = from - 1
        desiredFew = to - firstFew
