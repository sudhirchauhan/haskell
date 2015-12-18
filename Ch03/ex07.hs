-- flatten a list

intersperseList :: a -> [[a]] -> [a]

intersperseList [] = []

intersperseList [a] = [a]
intersperseList [] = []
