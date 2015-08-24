{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 20
    Description : Remove the K'th element from a list.
    License     : MIT (See LICENSE file)
-}

removeAt :: (Eq a)  => Int -> [a] -> (a, [a])
removeAt n l@(x:xs) = (poppedElem, restOfList)
  where poppedElem  = head $ drop (n - 1) l
        restOfList  = filter (/= poppedElem) l
