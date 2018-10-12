module Main where

main :: IO ()
main = putStrLn "Hello World"

fac n = if (n==0) then 1 else n*fac(n-1)

fac2 n = facAkku n 1
    where facAkku n akku = if(n==0) then akku else facAkku(n-1) (n*akku)

{-Kommentare
Listen benutzen
Laenge einer Liste-}

lenght2 l = if(null l) then 0 else 1 + (lenght2 (tail l))

{-Pattern Matching-}
lenght3 [] = 0 {-Basisfall den Kopf der Listen abfangen-}
lenght3 (x:xs) = 1 + lenght3 xs

minimum2 [] = error "empty"
minimum2 (x:[]) = x
minimum2 (x:xs) = min x (minimum2 xs)

{-ein Element an eine Liste anhaengen-}
append (x:xs) y = y:x:xs

append2 [] y = [y] {-Basisfall am ENde anhaengen-}
append2 (x:xs) y = x: (append2 xs y)

reverse2 [] = []
reverse2 (x:xs) = reverse xs ++ [x]


f :: Float  -> Float
f x = cos x / x

f2 = \x -> 2*x

map_two :: (s->t) ->[s] ->[t]
map_two f [] = []
map_two f (x:xs) = f x : map_two f xs

{-Filter Fuktionen mittels pattern matching-}
filter2 :: (t -> Bool) -> [t] -> [t]
filter2 pred [] = []
filter2 pred (x:xs) = if pred x then x : filter2 pred xs
                     else filter2 pred xs


hintereinander f g = (\x -> f(g x))

hintereinander2 f g x = f (g x)
add5 xs = map (5+) xs


{-Variablen, globale Variablen usw.-}
pi_new= 3.14159
umfang r = 2*pi_new*r


e m = let c = 30000000000
      in m*c*c

e2 m = m*c*c
    where c = 30000000000

{-Falten von Listen. Zum Beispiel Listen aufsummieren. Man kann licks oder rechts falten-}
sum [] = 0
sum (x:xs) x + sum xs
