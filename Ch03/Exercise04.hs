-- function to flatten a list of lists using a separator

intersperseMe :: a -> [[a]] -> [a]

--ignore sep for the 
intersperseMe  sep [] = []
intersperseMe  sep [x] = x
intersperseMe  sep (x:xs) = x ++ [sep] ++ intersperseMe sep xs

