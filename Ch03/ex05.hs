--  return true if list is a palindrome
isPalindrome ::(Eq a)=> [a] -> Bool

isPalindrome [] = True

--isPalindrome (x:[]) = True
isPalindrome xs
  |(head xs == last xs)  = True
  | otherwise = False
