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
length' []    = 0
length' [x]   = 1
length' (x:xs) = 1 + length' xs