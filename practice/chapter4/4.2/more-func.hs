-- replicate
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n ele
    | n <= 0 = []
    | otherwise = ele : (replicate' (n-1) ele)

-- take
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' n (x:xs) = x : (take' (n-1) xs)

-- reverse
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- repeat
repeat' :: a -> [a]
repeat' ele = ele : (repeat' ele)

-- zip
zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y) : (zip' xs ys)

-- elem
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' ele (x:xs) = if ele == x then True else ele `elem'` xs