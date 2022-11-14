import System.Environment

insertAt :: Int -> t -> [t] -> [t]
insertAt 0 item list = item:list
insertAt _ item [] = [item]
insertAt pos item (head:tail)
    |pos < 0 = insertAt 0 item (head:tail)
    |otherwise = head : insertAt (pos - 1) item tail

main = print $ insertAt pos item list
    where
        pos = 1
        item = 2
        list = [1, 2, 3, 4]
