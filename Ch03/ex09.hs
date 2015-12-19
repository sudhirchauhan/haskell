-- Directions data type
-- Given three points return left or right depending upon the angle abc formed between ab and bc

data Point = Point Integer Integer deriving (Show,Eq)

data Direction = Direction Left
                 | Right
                 | Straight
