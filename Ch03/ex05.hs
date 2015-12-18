--  return true if list is a palindrome
isPalindrome ::(Eq a)=> [a] -> Bool

isPalindrome [] = True

isPalindrome (x:[]) = True
isPalindrome xs
  |(head xs == last xs)  = isPalindrome (secondToSecondLast xs)
  | otherwise = False

secondToSecondLast :: [a] -> [a]
secondToSecondLast (x:[]) = []
secondToSecondLast (x:y:[]) = []
secondToSecondLast xs = [(head (tail xs))] ++ secondToSecondLast (tail xs)
                            
