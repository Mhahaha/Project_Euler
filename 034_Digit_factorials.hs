import Data.Char

list = [x | x <- [3..3000000], x == sum (map (\n -> product [1..n]) (map (digitToInt) (show x)))]

main = do 
    print $ sum list 


    