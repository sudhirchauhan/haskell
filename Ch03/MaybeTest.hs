data Authors = Authors (Maybe String)
             deriving (Show)
--
author = Authors (Just "My Nanme")
data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)
            

tree = Node "xx" Empty Empty
bigtree = Node 1 Empty (Node 3 Empty Empty)

-- Another way of defining Tree Using MayBe
data MayBeTree a = MayBeTreeNode  a (Maybe (MayBeTree a)) (Maybe (MayBeTree a)) deriving (Show)

maybetree = MayBeTreeNode 1 (Just (MayBeTreeNode 2 Nothing Nothing)) (Just (MayBeTreeNode 3 Nothing Nothing))

-- This one simplifies the defination
data AnotherTree a = AnotherTree (Maybe(a ,AnotherTree a, AnotherTree a)) deriving (Show)

-- Always initialize value of each part of recursive data individually
empty = AnotherTree Nothing
left  = AnotherTree (Just("left",empty,empty))
right = AnotherTree (Just("right",empty,empty))
root  = AnotherTree (Just("root",left,right))

--  In Comparision this is very hard
allinone = AnotherTree(Just("root",AnotherTree(Just("left",AnotherTree Nothing,AnotherTree Nothing)),AnotherTree(Just("right",AnotherTree Nothing,AnotherTree Nothing))))

