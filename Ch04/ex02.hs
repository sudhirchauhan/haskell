

splitWith :: (a -> Bool) -> [a] -> [[a]]

splitWith _ []      = []
splitWith f (x:xs)  =   