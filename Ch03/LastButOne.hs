-- Take a list and return second last value
secondLast :: [a] -> Maybe a


secondLast (x:xs) = if (length xs) <= 1 then x
secondLast _ = Nothing