--

data Tree a = Tree (Maybe (a, Tree a, Tree a))
