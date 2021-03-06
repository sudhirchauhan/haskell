--

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

-- Read the height of tree
treeHeight :: Tree a -> Integer
treeHeight (Empty) = 0
treeHeight (Node x Empty Empty)  = 1
treeHeight (Node _ left Empty)   = 1 + treeHeight left
treeHeight (Node _ Empty right)  = 1 + treeHeight right

treeHeight (Node x left right)  = let lh = 1 + treeHeight left
                                      rh = 1 + treeHeight right
                                  in case (lh <= rh) of
                                         True -> rh
                                         _    -> lh

