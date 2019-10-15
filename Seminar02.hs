isEven :: Int -> Bool
isEven 0 = True
isEven 1 = False
isEven n = isEven (n-2)

mod2 :: Int -> Int
mod2 = fromEnum . not . isEven


mod3 :: Int -> Int
mod3 1 = 1
mod3 2 = 2
mod3 0 = 0
mod3 n = mod3 (n-3)

recpow :: Int -> Int -> Int
recpow p 0 = 1
recpow p b = p * recpow p (b-1)

fact :: Integer -> Integer
fact 0 = 1
fact i = i * fact (i-1)

isPower2 :: Int -> Bool
isPower2 = isEven

digits :: Int -> Int
digits 0 = 0
digits n = mod n 10 + digits (div n 10)
