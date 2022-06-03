add :: Int -> Int -> Int
add x y = x + y

add2 :: Int -> (Int -> Int)
add2 x = \y -> x + y

-- a is a type variable
-- f and x are variables/arguments/patterns
twice :: (a -> a) -> a -> a
twice f x = f (f x)

replicateString :: String -> String 
replicateString s = s ++ s

replicateString2 :: String -> String 
replicateString2 = \s -> s ++ s


-- Q1: Write a function that takes a list of Int and adds 7 to all of them.
-- Example: adds7 [1,2,3] == [8, 9, 10]
adds7 :: [Int] -> [Int]
adds7 [] = []
adds7 (x:xs) = x + 7 : adds7 xs

-- Q2: Write a function that a list of strings and adds a Period (.) to all of them.
-- Example: appendsPeriod ["", "hello", "bye."] == [".", "hello.", "bye.."]
appendsPeriod :: [String] -> [String]
appendsPeriod [] = []
appendsPeriod (_head:rest) = (_head ++ ".") : appendsPeriod rest


getsLength :: [String] -> [Int]
getsLength [] = []
getsLength (x:xs) = length x : getsLength xs

-- [a] -> [b]
-- base case is the same
-- in the recursive case, we do something to the head and then perform recursion on the remaining list

-- what we do to the head is different in each


map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs

adds7' :: [Int] -> [Int]
adds7' xs = map' (\_head -> _head +7) xs

appendsPeriod' :: [String] -> [String]
appendsPeriod' xs = map' (\x -> x ++ ".") xs

getsLength' :: [String] -> [Int]
getsLength' xs = map' length xs
-- getsLength' xs = map' (\x -> length x) xs

-- This is called an operator section.
-- (+7) is same as (\x -> x + 7)
-- adds7' xs = map' +7) xs

-- HOMEWORK: Write a function that takes a list of list of numbers and finds the sum of each list.
-- EXAMPLE USAGE: sums [ [1, 10, -100], [-2, -6], [] ] = [-89, -8, 0]
sums :: [[Int]] -> [Int]
sums [] = []
sums (x:xs)
  | null x    = 0 : sums xs
  | otherwise = sum x : sums xs

-----------------------------------------------
---------FILTER--------------------------------

evens :: [Int] -> [Int]
evens [] = []
evens (x:xs)
  | even x = x : evens xs
  | otherwise = evens xs

-- HOMEWORK
-- Take care of 'a' and 'A' both.

-- using ||
vowels :: String -> String
vowels [] = []
vowels (x:xs)
  | x == 'a' || x == 'A' ||
    x == 'e' || x == 'E' ||
    x == 'i' || x == 'I' ||
    x == 'o' || x == 'O' ||
    x == 'u' || x == 'U' = x : vowels xs
  | otherwise            =     vowels xs

-- usign elem
vowels' :: String -> String
vowels' [] = []
vowels' (x:xs)
  | x `elem` ['a','A','e','E','i','I','o','O','u','U'] = x : vowels' xs
  | otherwise = vowels' xs

-- HOMEWORK:
-- What is common between evens and vowels?
-- What is different?

-- [a] -> [a]
-- base case is same
-- if head matches pattern, prepend it to next recursion
-- otherwise, recurse
