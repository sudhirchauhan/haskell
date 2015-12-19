-- Function to return length of a List
-- This will have a lot of book keeping because haskell is Lazy
listLength [] = 0
listLength (x:xs) =  listLength(xs) + 1


-- The Version will accumulate
-- Using where construct
-- function is called before where keyword  and defined after it. This is opposite of let bindings
listLengthWhere list =  f list 0
                         where f (x:xs) acc = f(xs) $!(acc+1)
                               f [] acc = acc
--main = putStrLn $ show (listLengthWhere [1..100000000])


-- listLengthWhere with case statements
listLengthWhereCase list = f list 0
                       where f list a =
                               case list of
                                  [] -> a
                                  _  -> f(tail list) $!(a + 1)

--main = putStrLn $ show (listLengthWhereCase [1..100000000])

-- Here is Where with Guards
listLengthWhereWithCase list = f list 0
                          where f list a
                                  | list == [] = a
                                  | otherwise = f (tail list) $!(a + 1)

main = putStrLn $ show (listLengthWhereWithCase [1..100000000])
-- Same version using let construct
-- Here functions  are defined  between let and in block and called after in keyword
-- in let fuction is defined in the <bindings> block and caled in <expressions> block
listLengthLet list = let a = 0
                         f [] a = a
                         f (x:xs) a = f(xs) $!(a+1)
                     in f list 0
--main = putStrLn $ show (listLengthLet [1..100000000])


-- list length with case statement
-- Here we do not define bindings equational style  but use the case 
listLengthLetWithCase list = let a = 0
                                 f list a = 
                                   case list of
                                     [] -> a
                                     _  -> f(tail list) $!(a + 1)
                             in f list 0 


--main = putStrLn $ show (listLengthLetWithCase [1..100000000])



-- :set -fobject-code to run ghci faster
-- :set +s to show execution times
-- ghc -O3 to optimize the code

-- Here is another version with let and guard
-- Guard must produce Bool or otherwise so it is in someways slower than case where less comparision is required
listLengthWithLetGuard list = let a = 0
                                  f list a
                                    | list == [] = a
                                    | otherwise = f (tail list) $!(a+1)
                              in f list 0
                           
--main = putStrLn $ show (listLengthWithLetGuard [1..100000000])
