-- Case related Learnings
-- Case is used to make a choice among multiple alternatives

data Fruit =  Apple | Orange deriving(Show)

-- This is a discriminating union so it can't have a Value contructor

apple = "apple"
orange = "Orange"


whichFruit :: String -> Fruit

whichFruit f = case f of
                  apple -> Apple
                  orange -> Orange

-- Above function does not work since apple and orance variable defined above do not exist inside he whichFruit fucntion

whichFruitCorrect f = case f of
                        "apple" -> Just Apple
                        "orange" -> Just Orange
                        _ -> Nothing


-- Writing same equational Style

whichFruitEquation "apple" = Just Apple
whichFruitEquation "orange" = Just Orange
whichFruitEquation _ = Nothing

: