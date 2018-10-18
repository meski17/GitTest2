import Data.List
import System.IO
-- :t schauen nach deklarationen :t sqrt
-- mit :r laden
-- mit :! clear clonsole loeschen



-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer - so viel wie Memory hat
-- Float oder Double

bigFloat = 3.999999999999 + 0.0000000005

-- Bool True False
-- Char
-- Tuple
always5 :: Int
always5 = 5

-- Functions
sumOfNums = sum [1..1000]

addEx = 5+4
subEx = 5-4
multEx = 5*4
divEx = 5/4

modEx = mod 5 4 --Prefix Operator
modEx2 = 5 `mod` 4 --Infic Operator

negNumEx = 5 + (-4)




-- Funktion DEfinition :t sqrt
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)
--square
squared9 = 9 ** 2
--trancate, round, ceiling 9.9999, floor 9.999


--Lists
primeNumbers = [3,5,7,11]
morePrime = primeNumbers ++ [13,17,19,23,29]

favNums = 2: 7: 21: 66: []

multiList = [[3,5,7], [11, 13, 17]]

morePrimes2 = 2: morePrime

--lenght of a List
lenPrime = length morePrimes2

--reverse a List
revPrime = reverse morePrimes2

--ist die Liste leer?
isListEmpty = null morePrimes2

-- bestimmtes Element rausnehmen
secondPrime = morePrimes2 !! 1

-- nur das erste Element
firstPrime = head morePrimes2

--nur das letzte Element
lastPrime = last morePrimes2

-- alles ausser das letzte
primeInit = init morePrimes2

-- die ersten 3 Elemente
first3Primes = take 3 morePrimes2

-- delete the first tree Elements
removedPrimes = drop 3 morePrimes2

is7InList = 7 `elem` morePrimes2
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2


newList = [2,3,5]
prodPrimes = product newList

--von 0 bis 10
zeroToTen =  [0..10]
--eine Gerade Liste
evenList = [2,4..20]

--alles um 3 Buchstaben
letterList = ['A', 'C'..'Z']

--wiederhole
many2s = take 10 (repeat 2)
many3s = replicate 10 3

-- wiederhole eine Liste zb 2 mal in dem man die 5 Elemente 2 mal nimmt
cycleList = take 10 (cycle [1,2,3,4,5])

--Operation x*2       Das ist das Temporaere Item aus der liste genommen
listTimes2 = [x * 2 | x <- [1..10]]

--Filtern das Resultat
listTimes3 = [x * 3 | x <- [1..50], x * 3 <= 50]

--mehre Filter
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

--sortedList
sortedList2 = sort [9,1,8,3,4,5,2]

--Listen summieren
sumOfLists = zipWith (+)[1,2,3,4,5][6,7,8,9,10]

--Filter auf Listen
listBiggerThan5 = filter (>5) morePrimes2
evensUpTo20 = takeWhile (<= 20) [2,4..]
--Listen duchgehen und multipliziern
multOfList = foldl (*) 1 [2,3,4,5]


--LIst comperation

pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

--Tuples - Liste mit verschiedenen Datentypen

randTuple = (1, "Random Tuple")
bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names =["Muhammad", "Ahmad", "Mehmed"]
addresses = ["123 Baden", "345 Wien", "567 Linz"]

namesAndAdresses = zip names addresses

--main
main = do
  putStrLn "Whats your Name"
  name <- getLine
  putStrLn ("Hello " ++ name)

  --Complilen, wenn man eine Main Funktion hat
  -- ghc --make haskellTutorial
  -- ./haskellTutorial

addMe :: Int -> Int -> Int
-- funcName param1 param2 = operations(returned value)
addMe x y = x + y

sumMe2 x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "Du kannst angeblich waehlen"
whatAge 21 = "Wird Zeit zum Aedern"
whatAge x = "Nothing importent"


-- Rekursion

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- 3 * fac(2)
-- 2 * fac(1)
-- 1 * fac(0)
--     = 1
-- ==== 1 * 1 = 1
-- 2 + 1 = 2
-- 2 + 3 = 6


-- factuerelle durch Produkt
productFac n = product [1.. n]


-- Guards sind sehr wichtig
isOdd :: Int -> Bool
isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

-- andere Schreibweise
isEven n = n `mod` 2 == 0


-- weiter zu Guards
whatGrade :: Int -> String
whatGrade age
  | (age >= 5) && (age <= 6) = "Kindergarten"
  | (age > 6) && (age <= 10) = "Elementry School"
  | (age > 10) && (age <= 14) = "Middle School"
  | (age > 14) && (age <= 18) = "High School"
  | otherwise = "Go to college"

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible Batting Average"
  | avg <= 0.250 = "Average Player"
  | avg <= 0.280 = "Youre doing pretty good"
  | otherwise = " Youre a superstar"
  where avg = hits/atBats

getListItems :: [Int] -> String
getListItems [] = "Empty List"
-- show zeigen das Item das erste Item
getListItems (x:[]) = "Your list starts with " ++ show x
-- das erste und das zweite
getListItems (x:y:[]) = "Deine Liste beeinhaltet " ++ show x ++ show y
-- die retlichen
getListItems (x:xs) = "The 1st Item is " ++ show x ++ " and the rest list is " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [xs]
