data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList :: [a] -> List a
fromList []      = Nil
fromList (x:xs)  = Cons x (List xs)


toList :: List a -> [a]
toList Nil = []
toList (Cons x (y)) = x : toList y
