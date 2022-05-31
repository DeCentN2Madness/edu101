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
