--

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

-- Read the height of tree
treeHeight :: Tree a -> Integer
treeHeight (Empty) = 0
treeHeight (Node x Empty Empty) = 1
treeHeight (Node _ left Empty)  = 
treeHeight (Node x left right)  = let lh = treeHeight left
                                     rh = treeHeight right
                                  in 
 

