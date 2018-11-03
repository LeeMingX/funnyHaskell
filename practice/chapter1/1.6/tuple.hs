-- (1,3)
(1, 3)
-- (3,'a',"hello")
(3, 'a', "hello")
-- (50,50.4,"hello",'b')
(50, 50.4, "hello", 'b')

-- 8
fst (8, 1)
-- 5
snd (12, 5)
-- [(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
zip [1,2,3,4,5] ['a'..'e']
zip [1, 2..] ['A'..'Z']

-- [(8,6,10)]
findTriangle t = [ (x, y, z) | x <- [1..t], y <- [1..t], z <- [1..t], x ^ 2 + y ^ 2 == z ^ 2, x + y + z == 24 ]
findTriangle t = [ (x, y, z) | z <- [1..t], x <- [1..z], y <- [1..x], x ^ 2 + y ^ 2 == z ^ 2, x + y + z == 24 ]