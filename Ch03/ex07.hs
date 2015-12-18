-- flatten a list

intersperseList :: a -> [[a]] -> [a]

intersperseList sep [[]] = []
intersperseList sep (x:xs) = x
--intersperseList sep (x:xs) = x  ++ [sep] ++ intersperseList sep xs

