-- flatten a list

intersperseList :: a -> [[a]] -> [a]

intersperseList sep [] = []
i--intersperseList sep (x:[]) = [x]
intersperseList sep x:xs = xs  ++ [sep] ++ intersperseList sep (tail xs)

