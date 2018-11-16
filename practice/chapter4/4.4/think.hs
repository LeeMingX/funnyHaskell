-- 递归求解汉诺塔问题
hanoiTower :: Integer -> String -> String -> String -> [(String, String)]
hanoiTower 0 from _ to = []
hanoiTower 1 from _ to = [(from, to)]
hanoiTower x from buffer to = hanoiTower (x-1) from to buffer ++ hanoiTower 1 from buffer to ++ hanoiTower (x-1) buffer from to

calHanoi :: (Integer, Integer, Integer) -> [(String, String)] -> [(Integer, Integer, Integer)]
calHanoi (0, 0, 0) _ = [(0, 0, 0)]
calHanoi (a, b, c) [] = []
calHanoi (a, b, c) (y:ys)
    | y == ("A", "B") = [(a-1, b+1, c)] ++ (calHanoi (a-1, b+1, c) ys)
    | y == ("B", "A") = [(a+1, b-1, c)] ++ (calHanoi (a+1, b-1, c) ys)
    | y == ("A", "C") = [(a-1, b, c+1)] ++ (calHanoi (a-1, b, c+1) ys)
    | y == ("C", "A") = [(a+1, b, c-1)] ++ (calHanoi (a+1, b, c-1) ys)
    | y == ("B", "C") = [(a, b-1, c+1)] ++ (calHanoi (a, b-1, c+1) ys)
    | y == ("C", "B") = [(a, b+1, c-1)] ++ (calHanoi (a, b+1, c-1) ys)
