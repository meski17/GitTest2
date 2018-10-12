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
pi_new = 3.14159
umfang r = 2*pi_new*r


e m = let c = 30000000000
      in m*c*c

e2 m = m*c*c
    where c = 30000000000

{-Falten von Listen. Zum Beispiel Listen aufsummieren. Man kann licks oder rechts falten-}
sum5 [] = 0
sum5 (x:xs) = x + sum5 xs

sum2 = foldr (+) 0
sum3 = foldl (+) 0

sum4 = foldl (*) 1
lenght5 xs = foldr (+) 0 (map (\x -> 1) xs)
lenght6 xs = foldr (\x n -> n+1) 0 xs

zipWith2 f [] [] = []
zipWith2 f (x:xs) (y:ys) = f x y : zipWith2 f xs ys

hamingDistanz xs ys = (zipWith unterschied xs ys)
                      where unterschied x y = if (x == y) then 0 else 1
{-Unendliche Listen-}
{-Primzahlen-}
primes (x:xs) = x:primes[y | y <- xs, mod y x/= 0]


{-Datentypen-}
type Person = (String, String, Integer)

Du :: Person
Du = ("Vorname", "Nachname", 42)

{-Richtige Datentypen-}
data Person1 = Mensch String String Integer
{-Konstruktor-}
Person1 :: String -> String -> Integer -> Person1
volljaerhrig :: Person1 -> Bool
volljaerhrig (Mensch vorname name alter) = alter >= 18

{-Enums-}
data schwierigkeit = Schwer | Leicht
data vorlesungsname = Mathe | Programmieren
vorlesung :: vorlesungsname -> schwierigkeit
vorlesung Mathe = Schwer
vorlesung Programmieren = Leicht

data Geometrie = Kreis Double | Rechteck Double Double | Quadrat Double
einheitskreis :: Geometrie
einheitskreis = Kreis 1.0

area :: Geometrie -> Double
area (Kreis r) = pi * r*r
area (Rechteck a b) = a * b
area (Quadrat a) = a*a
