module Functions where
    double :: Integer -> Integer
    double x = x + x

    fact :: Integer -> Integer
    fact x = if x <= 1 then 1 else fact(x - 1) * x

    factorial :: Integer -> Integer
    factorial 0 = 0
    factorial 1 = 1
    factorial x = factorial(x-1) * x
