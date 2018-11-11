bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= skinny = "underweight"
    | bmi <= normal = "normal"
    | bmi <= fat = "fat"
    | otherwise = "whale"
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0)


calcBmi :: [(Double, Double)] -> [String]
calcBmi xs = [ bmiTell' u1 u2 | (u1, u2) <- xs ]
    where bmiTell' weight height
            | bmi <= skinny = "underweight"
            | bmi <= normal = "normal"
            | bmi <= fat = "fat"
            | otherwise = "whale"
            where bmi = weight / height ^ 2
                  (skinny, normal, fat) = (18.5, 25.0, 30.0)