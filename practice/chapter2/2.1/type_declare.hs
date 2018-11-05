-- 'a' :: Char
:t 'a'
-- True :: Bool
:t True
-- "HELLO!" :: [Char]
:t "HELLO!"
-- (True, 'a') :: (Bool, Char)
:t (True, 'a')
-- 4 == 5 :: Bool
:t 4 == 5

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase xs = [ x | x <- xs, x `elem` ['A'..'Z'] ]

addThree :: Int -> Int -> Int -> Int
addThree a b c = a + b + b