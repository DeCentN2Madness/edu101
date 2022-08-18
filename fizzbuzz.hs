module FizzBuzz (fizzbuzzList) where

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

-- fizzbuzz if/then/else
fizzbuzz'' :: Int -> String
fizzbuzz'' n =
    if rem n 3 == 0 && rem n 5 == 0 then "fizzbuzz"
    else if rem n 3 == 0 then "fizz"
    else if rem n 5 == 0 then "buzz"
    else show n

-- fizzbuzz list
fizzbuzzList :: [Int] -> [String]
fizzbuzzList []     = error "no fizz; no buzz; no nuttin'"
fizzbuzzList [x]    = [fizzbuzz x]
fizzbuzzList (x:xs) = fizzbuzz x : fizzbuzzList xs
