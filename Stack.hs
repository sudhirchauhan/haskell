--
module Stack (Stack, insert,swap) where

type Stack w = [w]

--insert :: w-> Stack w

swap :: Stack w -> Stack w

swap [] = []
swap [w] = [w]
swap (w1:w2:ws) = w2 : w1 : ws
