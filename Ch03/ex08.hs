--

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (show)

-- Read the height of tree


