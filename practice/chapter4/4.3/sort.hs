quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = resultLst
    where   smallerThanHead = [ e | e <- xs, e <= x]
            biggerThanHead = [ e | e <- xs, e > x ]
            resultLst = (quickSort smallerThanHead) ++ [x] ++ (quickSort biggerThanHead)
