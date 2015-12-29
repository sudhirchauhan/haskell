

splitWith :: (a -> Bool) -> [a] -> [[a]]


splitWith _ []      = []
splitWith p (x:xs)  = let  