splitLines :: String -> [String]


splitLines  [] = []
splitLines cs  =
  let (pre,suf) = break isLineTerminator cs
  in pre: case suf of
   ('\r':'\n':rest) -> splitLines rest
   ('\r':rest)      -> splitLines rest
   ('\n':rest)      -> splitLines rest
   _                -> []

isLineTerminator c = c == '\r' || c == '\n'

splitLinesAnother [] = []
splitLinesAnother cs =
  let (pre,suf) = break isLineTerminator cs
  in pre: case suf of
   ('\r':'\n':rest)   -> splitLinesAnother rest
   ('\r':rest)        -> splitLinesAnother rest
   ('\n':rest)        -> splitLinesAnother rest
   _                  -> []




myBreak []   = ("","")

myBreak ('\n':xs)  = ("",'\n':xs)
myBreak cs  = let fst =""
                    -- rst = []
                  f xs fst
                      | (head xs == '\n') = (fst,xs)
                      | otherwise         = f (tail xs) (fst ++ [head xs]) 
                     -- case (head xs) of' -> (fst, xs)
                      --  _    -> (fst:head xs, f (tail xs))
              in f  cs fst
