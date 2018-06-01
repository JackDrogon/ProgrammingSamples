module Inspect where
    foldr' f acc [] = acc
    foldr' f acc (h:t) = f h (foldr' f acc t)

    foldl' f acc [] = acc
    foldl' f acc (h:t) = foldl' f (f acc h) t
