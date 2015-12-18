--  return true if list is a palindrome
isPalindrome :: [String] -> Bool

isPalindrome [] = True

isPalindrome (x:[]) = True
isPalindrome xs
  |(head xs == last xs)  = True
  | otherwise = False
