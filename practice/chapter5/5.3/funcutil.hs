-- map :: (a -> b) -> [a] -> [b]
:t map

-- [4,8,4,6,9]
map (+3) [1, 5, 1, 3, 6]
-- ["haha!","xoxo!","mimo!"]
map (++ "!") ["haha", "xoxo", "mimo"]
-- [[3,3,3],[4,4,4],[5,5,5]]
map (replicate 3) [3..5]
-- [1,3,5,8]
map fst [(1,2), (3,5), (5,9), (8,99)]

-- filter :: (a -> Bool) -> [a] -> [a]
:filter
-- [5,6,7,4]
filter (>3) [1,5,2,3,6,7,3,4,2,2]
-- [[1,2,3],[4,5]]
let notNull x = not (null x) in filter notNull [[1,2,3],[],[4,5],[],[]]

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort (x:xs) = left ++ [x] ++ right
    where left = quickSort (filter (<=x) xs)
          right = quickSort (filter (>x) xs)

collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz x
    | odd x = x : collatz (x * 3 + 1)
    | even x = x : collatz (x `div` 2)

numLongChain :: Int
numLongChain = length (filter (>15) (map length (map collatz [1..100])))

-- 20
let listOfFunc = map (*) [0..]
(listOfFunc !! 4) 5