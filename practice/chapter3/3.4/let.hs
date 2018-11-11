cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

-- [(25,16,9)]
[let square x = x * x in (square 5, square 4, square 3)]

-- (6000000,"Heythere!")
(let a = 100; b = 200; c = 300 in a*b*c, let foo = "Hey"; bar = "there!" in foo ++ bar)

-- 600
(let (a, b, c) = (100, 200, 300) in a+b+c)

calsBmis :: [(Double, Double)] -> [Double]
calsBmis xs = [ bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi > 25.0 ]