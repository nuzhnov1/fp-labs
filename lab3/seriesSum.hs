import System.Environment

seriesSum :: Integer -> Integer
seriesSum n
    |n <= 0 = 0
    |even n = n + seriesSum(n - 2)
    |otherwise = seriesSum(n - 1)

main = do
    args <- getArgs
    let n = read (head args) :: Integer
    print $ "Sum of series from 2 to " ++ show n ++ " is " ++ show (seriesSum n)
