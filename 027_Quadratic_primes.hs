import Data.List

--判断是否为素数
is_prime :: Integer -> Bool
is_prime n 
    | n <= 1 = False
    | otherwise = length [x | x <-[2..t], mod n x == 0] == 0 
           where t = floor (sqrt (fromIntegral n))


func a b n = n*n + a*n + b

primelist a b = takeWhile (\x -> f x > 0 && is_prime(f x)) [0..]
    where f = func a b

--严格求值
answer = foldl1' (\x@(_,_,a) y@(_,_,b) -> if (a>b) then x else y) $ candidates
    where candidates = [ (a,b, length (primelist a b)) | b <- [-1000..1000], a <- [(-b)..999], is_prime(a + b + 1) ]

main = do
    let x@(a, b, c) = answer
    print  $ "The answer is " ++ show x ++ " = " ++ show (a * b)