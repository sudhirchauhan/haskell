-- Guards are replacement for if else i n most cases

-- defined by after | on the left sie of function

lend3 amount balance
      | amount <= 0 = Nothing
      | amount > reserve = Nothing
      | otherwise        = Just newBalance
  where  reserve = 100
         newBalance = balance - amount
         