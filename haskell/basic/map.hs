module Main where

map_t =
    map (\x -> x * x) [1, 2, 3]

squareAll list = map square list
    where square x = x * x
