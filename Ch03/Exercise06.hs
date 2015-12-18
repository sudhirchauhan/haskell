-- This is in complete.
mergeSort []  = []
mergeSort x = x
mergeSort (x:y:xs)
  | x<y  = x ++ y ++ mergeSort(xs)
  | x>y  = y ++ x ++ mergeSort(xs)
  | otherwise = x ++ y ++ mergeSort(xs)