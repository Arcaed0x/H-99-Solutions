{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwk (ARCAED0X)
    Problem     : 5
    Description : Reverse a list.
-}

reverse' :: [a] -> [a]
reverse' []  = []
reverse' lst = lastElem : reverse' allButLast
  where lastElem   = last lst
        allButLast = init lst
