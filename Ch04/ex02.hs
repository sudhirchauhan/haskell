splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ []        = []
splitWith f (x:xs)    =
  let acc     = []
      p f acc (x:xs) = case f x of
                          |False -> [[acc ++ [x]] ++  p f acc  xs
                          |_     -> p f (acc ++ [x]) xs
  in p f  [] (x:xs)
  
  


