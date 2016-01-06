-- file  ch02/lastButOne.hs

lastButOne :: ([a] -> a)

-- this is my first version, totally imperative
-- lastButOne xs = if (drop 2 xs) ==[]
--                 then head xs
--                 else lastButOne (tail xs)


-- this one uses recursion
--lastButOne (x:y:[]) = x
--lastButOne (_:xs)   = lastButOne xs

-- this one uses built in functions last and init
--lastButOne xs = (last . init)  xs
-- here $ operator replaces brackets
-- lastButOne xs = last . init $ xs

--this one uses reverse and head and drop.
lastButOne xs |length xs < 2 = error "too short"
              | otherwise    = head . drop 1 . reverse $ xs
-- this is equilent to
-- lastButOne xs = head(drop 1 (reverse xs))




