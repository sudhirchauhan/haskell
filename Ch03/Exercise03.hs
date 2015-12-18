-- calculate mean of items of a list

meanList []   = 0 
meanList list  = let sum = 0
                     count = 0
                     f lst sum count
                       | lst == [] = sum/count
                       | otherwise = f (tail lst) (sum + (head lst)) (count + 1)
                 in f list 0 0

meanListLetReversed list = let f lst sum count
                                 | lst ==[] = sum/count
                                 | otherwise = f(tail lst) (sum + (head lst)) (count + 1)
                           in f list 0 0
                           
                                 