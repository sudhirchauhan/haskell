-- Turn a list into Palindrome


palindromeList [] = []
palindromeList (x:xs)  = [x]  ++ palindromeList(xs) ++ [x]

t = palindromeList [1..10000]
-- main = putStrLn $ show (t)

p list = list ++ reverse list
