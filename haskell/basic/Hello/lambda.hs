main = do
    map (\x -> x * x) [1, 2, 3]
    putStrLn $ (\x -> x ++ x) "2"
