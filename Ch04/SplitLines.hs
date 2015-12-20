splitLines :: String -> [String]


splitLines  [] = []
splitLines cs  =
 let (pre, suf) = break isLineTerminator cs
 in  pre: case suf of
   ('\r':'\n':rest) -> splitLines rest
   ('\r':rest)      -> splitLines rest
   ('\n':rest)      -> splitLines rest
   _                -> []

isLineTerminator c = c == '\r' || c == '\n'

splitLinesAnother [] = []
splitLinesAnother (x:xs) = let pre:case suf of
                ('\r':'\n':rest)   -> splitLinesAnother rest
                ('\r':rest)        -> splitLinesAnother rest
                ('\n':rest)        -> splitLinesAnother rest
                _                  -> []
  in (pre: suf) = break isLineTerminator (x:xs)
