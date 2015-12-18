--

data Tree a = Tree (Maybe (Node a, Tree a, Tree a))
