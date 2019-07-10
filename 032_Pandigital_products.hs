import Data.List
import Data.Set

ispandigital :: String -> Bool
ispandigital s =  
            (sort s) == "123456789"


pandigital = fromList [x*y| x <- [1..100], y <- [100..9999], let t = (show x) ++ (show y) ++ (show (x*y)) in ispandigital t == True]

main = do 
        print $ sum pandigital