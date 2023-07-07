multiplyBy :: Double -> Double -> Double
multiplyBy fac n = n * fac

square :: Double -> Double
square n = n * n

myCal :: Double -> Double -> Double
myCal = multiplyBy . square

fac :: Double
fac = 0.1

nums :: [Double]
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]

transformedNums :: [Double]
transformedNums = map (\n -> myCal n fac) nums

main :: IO ()
main = do
  print transformedNums
