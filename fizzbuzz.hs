-- fizzbuzz guards
fizzbuzz :: Int -> String
fizzbuzz n
    | rem n 3 == 0 && rem n 5 == 0 = "fizzbuzz"
    | rem n 3 == 0                 = "fizz"
    | rem n 5 == 0                 = "buzz"
    | otherwise                    = show n

-- fizzbuzz case
fizzbuzz' :: Int -> String
fizzbuzz' n =
    case ( rem n 3 == 0, rem n 5 == 0 ) of
        (True, True)   -> "fizzbuzz"
        (True, False)  -> "fizz"
        (False, True)  -> "buzz"
        (False, False) -> show n
