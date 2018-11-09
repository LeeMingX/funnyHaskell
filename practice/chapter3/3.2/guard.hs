bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "underweight"
    | bmi <= 25.0 = "normal"
    | bmi <= 30.0 = "some weight"
    | otherwise = "whale"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
    | weight / height ^ 2 <= 18.5 = "underweight"
    | weight / height ^ 2 <= 25.0 = "normal"
    | weight / height ^ 2 <= 30.0 = "some weight"
    | otherwise = "whale"

myCmp :: (Ord a) => a -> a -> Ordering
a `myCmp` b
    | a < b = LT
    | a > b = GT
    | otherwise = EQ