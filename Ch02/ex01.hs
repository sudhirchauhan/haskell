-- types for the following expressions.

false = False
-- type is False :: Bool

tuple = (["foo","bar"],'a')
--type is tuple of list of strings and char
-- tuple :: ([String],Char)
-- or tuple :: ([[Char]],Char)

tuple2 = [(True,[]), (False,[['a']])]
-- tuple2 = [(Bool,[[Char]])]
