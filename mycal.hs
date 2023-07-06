multiplyBy :: Double -> Double -> Double
multiplyBy fac n = n * fac

square :: Double -> Double
square n = n * n

compose :: (Double -> Double) -> (Double -> Double) -> (Double -> Double)
compose func1 func2 = \n -> func2 (func1 n)

myCal :: Double -> Double -> Double
myCal = compose square . multiplyBy

fac :: Double
fac = 0.1

nums :: [Double]
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]

transformedNums :: [Double]
transformedNums = map (\n -> myCal n fac) nums

main :: IO ()
main = do
  print transformedNums
