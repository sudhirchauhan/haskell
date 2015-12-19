-- Directions data type
-- Given three points return left or right depending upon the angle abc formed between ab and bc

data Point = Point Integer Integer deriving (Show,Eq)

data Direction = Direction TurnLeft
                 | TurnRight
                 | GoStraight

-- getDirection :: Point a -> Point a -> Point a -> Direction

-- -- if xa == xb == xc then stright
-- -- if xa < xb > xc then left else Right
-- -- if xa > xb < xc then Left else Right 
-- getDirection (Point xa ya)  (Point xb yb) (Point xc yc)
--   | (xa == xb == xb) = Straight
--   | (xa < xb > xc)   = Left
--   | (xa > xb < xc)   = Left
--   | otherwise        = Right
