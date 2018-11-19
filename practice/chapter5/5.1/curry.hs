-- 4
max 3 4
-- 4
(max 3) 4

-- max :: Ord a => a -> a -> a
:t max

max :: (Ord a) => a -> (a -> a)

multiThree :: Int -> Int -> Int -> Int
multiThree a b c = a * b * c

let multiTwoWithNine = (multiThree 9)
-- 54
multiTwoWithNine 2 3


compareWithHundred :: Int -> Ordering
compareWithHundred a = a `compare` 100

compareWithHundred 99

compareWithHundred' :: Int -> Ordering
compareWithHundred' = (`compare` 100)

isUpperAlphhanum :: Char -> Bool
isUpperAlphhanum = (`elem` ['A'..'Z'])