--  return true if list is a palindrome
isPalindrome :: [a] -> Bool

isPalindrome [] = True

isPalindrome (x:[]) = True
isPalindrome (x:xs:y:[])
  | x == y  = isPalindrome xs
  | otherwise = False
