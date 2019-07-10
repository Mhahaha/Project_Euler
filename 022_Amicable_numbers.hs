factor n = [x | x <- [1..(n `div` 2)], n `mod` x == 0]

getsum n = sum [ x + y|x <- [1..n], let y = sum (factor x), sum (factor y) == x, y < x]

main = print $ getsum 10000