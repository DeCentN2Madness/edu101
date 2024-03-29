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

{- Excercise #4
     create a function hasPath that determines if a path from one node to another
     exists within a directed graph
-}
hasPath :: [(Int,Int)] -> Int -> Int -> Bool
hasPath edges begin end
  | null edges   = begin == end
  | begin == end = True
  | otherwise    = elem' True [ hasPath edges' y end | (x,y) <- edges, x == begin ]
  where edges'   = [ (x,y) | (x,y) <- edges, x /= begin ]

{- Xtra credit
     create a function raceResult that prompts for a number between 1 and 10
     then returns the race result.
-}
raceResult :: IO String
raceResult = do
  putStr "How many contestants? "; c <- getLine
  putStr $ "number from 1 to " ++ c ++ ": "; r <- getLine
  case r of
    "1"    -> return "You won a gold medal!"
    "2"    -> return "You got a silver medal!"
    "3"    -> return "You got a bronze medal."
    (x:xs) -> return "No podium for you, loser!!"
