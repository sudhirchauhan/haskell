-- flatten a list

intersperseList :: a -> [[a]] -> [a]

intersperseList sep [] = []
intersperseList sep [[x]] = [x]
intersperseList sep xs = head xs  ++ [sep] ++ intersperseList sep (tail xs)

