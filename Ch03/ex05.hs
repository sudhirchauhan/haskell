--  return true if list is a palindrome
isPalindrome :: [a] -> Bool

isPalindrome [] = True

isPalindrome (x:[]) = True
isPalindrome (x:y:_:z:a:[])
  | x == a = isPalindrome(y:_:z)
  | otherwise = False
