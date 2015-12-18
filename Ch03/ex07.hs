-- flatten a list

intersperseList :: a -> [[a]] -> [a]

intersperseList sep [] = []
iintersperseList sep (x:[]) = [x]
intersperseList sep (x:xs) = x  ++ [sep] ++ intersperseList sep xs

