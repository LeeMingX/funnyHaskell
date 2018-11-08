lucky :: Int -> String
lucky 7 = "Lucky number seven"
lucky x = "sorry, you're out of luck, pal!"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial x = factorial(x - 1) * x

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseqh"
charName 'c' = "Cecil"

addVector :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

fst' :: (a, b, c) -> a
fst' (x, _, _) = x
snd' :: (a, b, c) -> b
snd' (_, y, _) = y

head' :: [a] -> a
head' [] = error "Can't call head on an empty list"
head' (x:xs) = x

firstletter :: String -> String
firstletter "" = "Empty string, whoops!"
firstletter all@(x:xs) = "the first letter of " ++ all ++ " is " ++ [x]

