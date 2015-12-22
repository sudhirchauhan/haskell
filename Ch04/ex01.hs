-- safe versions of head, tail, last , and init


safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:xs) = Just xs

safeLast :: [a] -> Maybe a
safeLast [] = Nothing
safeLast x = Just (last x)

safeInit :: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit x = Just (init x)
