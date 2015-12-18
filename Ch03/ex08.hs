--

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

-- Read the height of tree
treeHeight :: Tree a -> Integer
treeHeight Empty = 0
--treeHeight 

