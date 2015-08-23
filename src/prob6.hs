{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 6
    Description : Find out whether a list is a palindrome.
                  A palindrome can be read forward or backward;
                  e.g. (x a m a x).
    License     : MIT (See LICENSE file)
-}

isPallindrome :: (Eq a) => [a] -> Bool
isPallindrome []  = True
isPallindrome lst = lst == reversedLst
  where reversedLst = reverse lst
