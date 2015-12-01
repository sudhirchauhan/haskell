-- file  ch02/lastButOne.hs

--lastButOne :: ([a] -> a)
lastButOne xs = if (drop 2 xs) ==[]
                then head xs
                else lastButOne (tail xs)