

splitWith :: (a -> Bool) -> [a] -> [[a]]


splitWith _ []      = []
splitWith f (x:xs)  = case f x of
                         False -> [ [x] ++ splitWith f xs]
			 -     ->[x] ++  splitwith f xs