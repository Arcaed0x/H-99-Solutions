{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwk (ARCAED0X)
    Problem     : 3
    Description : Find the K'th element of a list.
                  The first element in the list is number 1.
-}

elemAt :: [a] -> Int -> a
elemAt lst e = lst !! elemNum
  where elemNum = e - 1
