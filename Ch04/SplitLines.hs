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




myBreak f []   = ("","")

myBreak f ('\n':xs)  = ("",'\n':xs)
myBreak f (x:xs)  = let fst  = ""
                        acc x:xs = fst ++ [x]  
                        case f of
                          True -> (fst,xs)
                          _    -> acc xs
                    in acc x:xs
