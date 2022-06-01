{- run-through of the excercises provided in the pdf file
   https://www.cis.upenn.edu/~cis194/spring13/hw/01-intro.pdf
-}

-- Excercise 1

-- convert positive integers to a list of digits
toDigits :: Integer -> [Integer]
toDigits n
    | n <= 0    = []
    | otherwise = toDigits (quot n 10) ++ [rem n 10]

-- toDigits reversed
toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse $ toDigits n

-- Exercise 2

-- double every other digit from right in list
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther ns = {- magic! -}
