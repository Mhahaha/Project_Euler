import Data.Set

main = print $ length (fromList seq)
      where seq = [a^b| a <- [2..100], b <- [2..100]]