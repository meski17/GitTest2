module Main where

main :: IO ()
main = putStrLn "Hello World"

fac :: Integer -> Integer
fac n = if n == 0
  then 1
  else n * fac(n - 1)

primes :: [Integer]
sieve :: [Integer] -> [Integer]
sieve (x:xs) = x : sieve [y| y <- xs, mod y x > 0]
primes = sieve[2..]
