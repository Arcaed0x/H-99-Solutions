{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 5
    Description : Reverse a list.
    License     : MIT (See LICENSE file)
-}

reverse' :: [a] -> [a]
reverse' []  = []
reverse' lst = lastElem : reverse' allButLast
  where lastElem   = last lst
        allButLast = init lst
