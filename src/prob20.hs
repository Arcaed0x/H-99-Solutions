{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 20
    Description : Remove the K'th element from a list.
    License     : MIT (See LICENSE file)
-}

removeAt :: Int -> [a] -> (a, [a])
removeAt n l = (poppedElem, refinedList)
  where zeroedIndex     = n - 1
        poppedElem      = l !! zeroedIndex
        (preFx, sufFx)  = (\(x,y) -> (x, tail y)) $ splitAt zeroedIndex l
        refinedList     = preFx ++ sufFx
