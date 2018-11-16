-- maximum' :: (Ord a) => [a] -> a
-- maximum' [] = error "calculate empty list"
-- maximum' (x:[]) = x
-- maximum' (x:xs) = max x (maximum' xs)

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "calculate the max value of empty list"
maximum' [x] = x
maximum' (x:xs) = max x maxtail
    where maxtail = maximum' xs