{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 2
    Description : Find the last but one element of a list.
    License     : MIT (See LICENSE file)
-}

getPenaltimate :: [a] -> a
getPenaltimate = head . tail . reverse
