foldr' f acc [] = acc
foldr' f acc h:t = foldr' f h (foldr' f acc t)

foldl' f acc [] = acc
foldl' f acc h:t = foldl' f (f acc h) t
