{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 7
    Description : Flatten a nested list structure.
    License     : MIT (See LICENSE file)
-}

-- | Data Type from example.
data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (List [])       = []
flatten (Elem x)        = [x]
flatten (List (x:xs))   = flattendList
  where flattendRest = flatten (List xs)
        flattendList = case x of
            Elem e        -> e : flattendRest
            lst@(List es) -> flatten lst ++ flattendRest
