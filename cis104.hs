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
doubleEveryOther ns =
  if length ns == 16 then reverse $ dblEvensL $ reverse ns
  else error "credit card numbers are 16 digits"
  where
    dblEvensL (x:y:ns)
      | null (x:y:ns) = []
      | null (y:ns)   = [x]
      | null ns       = x : [2 * y]
      | otherwise     = x : 2 * y : dblEvensL ns

doubleEveryOther' :: [Integer] -> [Integer]
doubleEveryOther' ns = fst $ foldr dblSnd ([], False) ns
  where dblSnd x (acc, bool) = ((if bool then 2 * x else x) : acc, not bool)

-- Exercise 3

-- calculate the sum of all digits
-- Example: sumDigits [16,7,12,5] = 1 + 6 + 7 + 1 + 2 + 5 = 22
sumDigits :: [Integer] -> Integer
sumDigits = undefined

-- Exercise 4

-- indicate whether an Integer could be a valid credit card number
-- use all functions defined in the previous exercises
-- Example: validate 4012888888881881 = True
-- Example: validate 4012888888881882 = False
validate :: Integer -> Bool
validate = undefined
