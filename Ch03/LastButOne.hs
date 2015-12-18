-- Take a list and return second last value
secondLast :: [a] -> Maybe a



secondLast (x:y:xs) = if length xs == 1
                    then Just x
                    else secondLast(xs)
secondLast _ = Nothing                    

-- Purely Functional mode where no condotionals are required
secondLast1 :: [a] -> Maybe a
secondLast1 (x:y:[]) = Just x
secondLast1 (_:x:y:[]) = Just x
secondLast1 _ = Nothing

secondLast2 :: [a] -> a 
secondLast2 (x:y:[]) = x
secondLast2 (_:x:y:[]) = x
secondLast2 _ = []