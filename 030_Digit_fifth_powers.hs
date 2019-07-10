
seqlist = [t| t <- [2..400000], let {a = t `mod` 10 ; b = (t `div` 10)`mod`10 ; c = (t `div` 100)`mod`10 ; d = (t `div` 1000)`mod`10;
                      e = (t `div` 10000) `mod` 10; f = (t `div` 100000) `mod` 10 } in a^5 + b^5 + c^5 + d^5 + e^5 + f^5 == t]

main = print $ sum seqlist