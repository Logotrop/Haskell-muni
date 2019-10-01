isSucc :: Integer -> Integer -> Bool
isSucc x y = y == x+1

circleArea :: Double -> Double
circleArea r = pi * r ^ 2

max3 :: Integer -> Integer -> Integer -> Integer
max3 x y z = if x > y then (if x > z then x else z) else if y>z then y else z  
