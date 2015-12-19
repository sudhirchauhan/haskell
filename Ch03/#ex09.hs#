-- Directions data type
-- Given three points return left or right depending upon the angle abc formed between ab and bc

data Point = Point Integer Integer deriving (Show,Eq)


--type TurnGoLeft   = Integer
--type TurnRight  = Integer
--type GoStraight = Integer

data Direction = GoLeft | GoRight | GoStraight
               deriving(Show)
                   

getDirection :: (Point a) -> (Point a) -> (Point a) -> Direction

-- -- if xa == xb == xc then stright
-- -- if xa < xb > xc then left else Right
-- -- if xa > xb < xc then GoLeft else Right 
getDirection (Point xa ya)  (Point xb yb) (Point xc yc)
  | (xa == xb)  = GoStraight
  | (xa < xb)   = GoLeft
  | (xa > xb)   = GoLeft
  | otherwise   = GoRight
