data Parser a = Parser([(a,String)])

--item :: Parser Char
item inp   = \inp -> case inp of
  []     ->[]
  (x:xs) -> [(x,xs)]

--failure :: Parser a
--failure = \inp -> []
