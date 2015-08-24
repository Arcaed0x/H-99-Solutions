{-
    H-99 Problems
    Copyright 2015 (c) Adrian Nwankwo (Arcaed0x)
    Problem     : 12
    Description : Decode a run-length encoded list.
    License     : MIT (See LICENSE file)
-}

data ListElemSize a = Multiple Int a | Single a
    deriving (Show)

decompress :: [ListElemSize a] -> [a]
decompress [] = []
decompress (x:xs) = case x of
          Multiple n e -> (replicate n e) ++ decompress xs
          Single e     -> e : decompress xs
