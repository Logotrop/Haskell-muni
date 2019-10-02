next :: Integer -> Integer
next a = a+1

before :: Integer -> Integer
before a = a-1

pow :: Integer -> Integer -> Integer
pow a 1 = a
pow a b = a * pow a (b-1)

toInt :: Float -> Integer
toInt a = round a

testprime :: Integer -> Integer -> Bool
testprime a 2 = not (mod a 2 == 0)
testprime a b =  if not (mod a b == 0) then testprime a (b-1) else False

prime :: Integer -> Bool
prime a = (testprime a ( toInt (sqrt (fromIntegral a))))

testPrimesToNum ::(Num b) => [b] -> Integer -> Integer -> [b]
testPrimesToNum a _ _ = testPrimesToNum a [] 0
testPrimesToNum a b i = if a == i then b else if prime i then b ++ i && i == next i else  testPrimesToNum a b i