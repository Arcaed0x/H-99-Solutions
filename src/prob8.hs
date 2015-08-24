{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 8
    Description : Eliminate consecutive duplicates of list elements.
    License     : MIT (See LICENSE file)
-}

unique :: (Eq a) => [a] -> [a]
unique []     = []
unique (x:xs) = reverse $ foldl uniqueFilter [x] xs
  where uniqueFilter acc x = if (head acc) == x
                             then acc
                             else x:acc
