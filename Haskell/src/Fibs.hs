module Fibs where

fib_iterative :: Int -> [Int]
fib_iterative 0 = [1]
fib_iterative 1 = [1, 1]
fib_iterative x = foldl (\seq n -> seq ++ [sum (drop (n - 2) seq)]) [1,1] [2..x]

fib_recursive :: Int -> [Int]
fib_recursive 0 = [1]
fib_recursive 1 = [1, 1]
fib_recursive x = fib_seq where
                    fib_seq = seq ++ [sum (drop (x - 2) seq)]
                    seq = fib_recursive (x - 1)

fib_tail_recursive :: Int -> [Int] -> [Int]
fib_tail_recursive 0 seq = [1]
fib_tail_recursive 1 seq = seq
fib_tail_recursive x seq = fib_tail_recursive (x - 1) (seq ++ [sum (drop (length seq - 2) seq)])
