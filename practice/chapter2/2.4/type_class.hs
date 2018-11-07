-- (==) :: Eq a => a -> a -> Bool
:t (==)
-- True
5 == 5
-- False
5 /= 5
-- True
'a' == 'a'
-- False
"ho ho" == "Ho hho"
-- True
3.432 == 3.432

-- (>) :: Ord a => a -> a -> Bool
:t (>)
-- True
"Abresdfs" < "Zdfer"
-- LT
"Abfdfdd" `compare` "Zmbar"
-- True
5 >= 3
-- GT/
5 `compare` 3
-- True
'b' > 'a'

-- "3"
show 3
-- "5.323"
show 5.323
-- "True"
show True

-- True
read "True" || False
-- 11.5
read "8.3" + 3.2
-- 3
read "5" - 2
-- [1,2,3,4,4]
read "[1,2,3,4]" ++ [4]
-- read :: Read a => String -> a
:t read
-- 5
read "5" :: Int
-- 5.0
read "5" :: Float
-- [1,2,3,4]
read "[1,2,3,4]" :: [Int]

-- "abcde"
['a' .. 'e']
-- [LT,EQ,GT]
[LT .. GT]
-- [3,4,5]
[3..5]
-- 'C'
succ 'B'

-- -9223372036854775808
minBound :: Int
-- '\1114111'
maxBound :: Char
-- True
maxBound :: Bool
-- (True,9223372036854775807,'\1114111')
maxBound :: (Bool, Int, Char)

-- 20 :: Num p => p
:t 20
-- 20
20 :: Int
-- 20
20 :: Integer
-- 20.0
20 :: Float

-- (*) :: Num a => a -> a -> a
:t (*)
-- 7.2
fromIntegral (length [1,2,3,4]) + 3.2