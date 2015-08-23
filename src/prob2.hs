{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwk (ARCAED0X)
    Problem     : 2
    Description : Find the last but one element of a list. 
-}

getPenaltimate :: [a] -> a
getPenaltimate = head . tail . reverse
