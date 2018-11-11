head' :: [a] -> a
head' xs = case xs of [] -> error "get a head of empty list!"
                      (x:_) -> x