-- Directions data type
-- Given three points return left or right depending upon the angle abc formed between ab and bc

data Point = Point Integer Integer deriving (Show,Eq)


--type TurnGoLeft   = Integer
--type TurnRight  = Integer
--type GoStraight = Integer

data Direction = GoLeft | GoRight | GoStraight
               deriving(Show)
                   

--getSlope :: Point -> Point -> Integer
--getSlope (Point xa ya) (Point xb yb) = (yb -ya)/(xb -xa)




getDirection :: Point -> Point  -> Point -> Direction
-- -- if xa == xb == xc then stright
-- -- if xa < xb > xc then left else Right
-- -- if xa > xb < xc then GoLeft else Right 
getDirection (Point xa ya)  (Point xb yb) (Point xc yc)
  | (xa == xb) == (xb == xc)  = GoStraight
  | (xa < xb)   = GoLeft
  | (xa > xb)   = GoLeft
  | otherwise   = GoRight
