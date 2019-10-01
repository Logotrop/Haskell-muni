isSucc :: Integer -> Integer -> Bool --poslední termín je výsledek co ta funkce bude vracet
isSucc x y = y == x+1

circleArea :: Double -> Double --kdyz je ve funkci hodnota double tak taky musí vracet double
circleArea r = pi * r ^ 2

max3 :: Integer -> Integer -> Integer -> Integer
max3 x y z = if x > y then (if x > z then x else z) else if y>z then y else z --if musí mít vždy i then i else jinak to nepojede  

max3' :: Integer -> Integer -> Integer -> Integer
max3' x y z = max x maxYZ --použití lokálních promněných
    where maxYZ = max y z -- zavádění lokálních promněných

pythagoras :: Integer -> Integer -> Integer -> Bool
pythagoras x y z = pyt z x y || pyt y x z || pyt z y x 
    where pyt a b c = a^2 + b^2 == c^2

logicalAnd :: Bool -> Bool -> Bool
logicalAnd True True = True
logicalAnd _ _ = False

parallelToAxis :: (Integer, Integer) -> (Integer, Integer) -> Bool
parallelToAxis (x1, x2) (y1, y2) = x1 == x2 || y1 == y2

ack :: Int -> Int -> Int
ack 0 n = succ n
ack m 0 = ack (pred m) 1
ack m n = ack (pred m) (ack m (pred n))
