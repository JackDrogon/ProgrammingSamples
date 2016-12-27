module Functions where
    double :: Integer -> Integer
    double x = x + x

    fact x = if x <= 1 then 1 else fact(x - 1) * x

    factorial  0 = 1
