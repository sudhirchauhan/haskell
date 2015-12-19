-- Directions data type
-- Given three points return left or right depending upon the angle abc formed between ab and bc

data Point = Point Double Double  deriving (Show,Eq)


--type TurnGoLeft   = Integer
--type TurnRight  = Integer
--type GoStraight = Integer

data Direction = GoLeft | GoRight | GoStraight
               deriving(Show)
                   

getSlope :: Point -> Point -> Double
getSlope (Point xa ya) (Point xb yb) = (yb -ya) / (xb -xa)




getDirection :: Point -> Point  -> Point -> Direction
-- -- if xa == xb == xc then stright
-- -- if xa < xb > xc then left else Right
-- -- if xa > xb < xc then GoLeft else Right 
getDirection x y z
  | (getSlope x y) == (getSlope y z)  = GoStraight
  | (getSlope )  = GoLeft
  | (xa >= xb) && (xc >= xb)   = GoLeft
  | otherwise   = GoRight
