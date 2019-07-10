fibs = 1 : 1 : [ a + b | (a, b) <- zip fibs (tail fibs)]

main = print (length (takeWhile (<10^999) fibs) + 1)