-- https://www.youtube.com/playlist?list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV

-- Haskell for Imperative Programmers #5 - List Excercises

{- Excercise #1
     create a function elem' that returns True if an element is in a given list
     and returns False otherwise
-}
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ []    = False
elem' a (x:xs)
  | a == x    = True
  | otherwise = elem' a xs

{- Excercise #1 extra
     do it again with style… or somethin'
-}
elem'' :: (Eq a) => a -> [a] -> Bool
elem'' _ []     = False
elem'' a (x:xs) = a == x || elem'' a xs

{- Excercise #2
     create a function nub that removes all duplicates from a given list
-} 
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs) | not $ elem'' x xs = x : nub xs
           | otherwise       = nub xs

{- Excercise #3
     create a function isAsc that returns True if the list given to it is a list
     of ascending order
-}
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc (x:xs) = null xs || x <= head xs && isAsc xs
-- isAsc (x:y:xs) = null (y:xs) || x <= y && isAsc (y:xs)
