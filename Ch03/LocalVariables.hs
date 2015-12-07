-- let and where are two methods for defining local variables
-- binding exits within the let or where block
-- nesting via whitespaces
-- nested scope can access outside.
-- variable shadowing is possible
-- vriable shadowing warining can be enabled on ghc using -fwarn-name-shadowing 

lend amount balance = let reserve = 100
                          newBalance = balance -amount
                      in if balance < reserve
                         then Nothing
                         else Just newBalance
{--
let <bindings>
in <expressions>
--}

-- where clause is opposite of let in terms of bindings and expression place holders
{--
<expressions>
where <bindings>
--}


lend2 amount balance = if amount < reserve
                       then Just newBalance
                       else Nothing
             where     reserve = 100
                       newBalance = balance -amount
                       
lend3 amount balance = 