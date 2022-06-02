-- assign case to name
five = case 2 + 3 of
    5 -> "yes"
    _ -> "no"

-- define infix function
(♥) :: String -> String -> Bool
x ♥ y = (elem x [ "Jeff", "Alice" ] && elem y [ "Sam", "Euterpe" ]) ||
        (elem x [ "Sam", "Euterpe" ] && elem y [ "Jeff", "Alice" ])

-- assign length of case to name
x :: Int
x = length $ case 2 + 3 of { 5 -> "yes"; _ -> "no" }

-- redefine last as last'
last' :: [a] -> a
last' []     = error "borked!"
last' [x]    = x
last' (x:xs) = last' xs

-- redefine length as length'
length' :: (Num b) => [a] -> b
length' []     = 0
length' [x]    = 1
length' (x:xs) = 1 + length' xs

-- replacement for 'last'
lastElem :: [a] -> a
lastElem []     = error "empty array - no last element"
lastElem [x]    = x
lastElem (x:xs) = lastElem xs

-- fibonacci index
fib' :: Integer -> Integer
fib' n
    | n < 0     = error "negative fibonacci values not yet implemented"
    | otherwise = last $ take (fromInteger n + 1) fibs
    where fibs = 0 : scanl (+) 1 fibs

-- Create a function to check if a string is palindrome
-- "abc" - False
-- "aba" - True
palindrome :: [Char] -> Bool
palindrome s = s == reverse s

-- Create a function to count the number of ways you can rearrange the letter of
-- a string to create palindrome.
-- ex - "abc" -> 0
-- ex - "aabb" -> 2 "abba" and "baab"
-- Assume the string contains letters "a" .. "z" only.
numberOfPalindromes :: [Char] -> Integer
numberOfPalindromes = error "Implement"
