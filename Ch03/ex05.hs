--  return true if list is a palindrome
isPalindrome :: [a] -> Bool

isPalindrome [] = True

isPalindrome (x:[]) = True
isPalindrome xs
  | head xs == last xs  = isPalindrome(y:_:z)
  | otherwise = False
