lengthWithoutItem :: (Eq t) => t -> [t] -> Int
lengthWithoutItem _ [] = 0
lengthWithoutItem item (head:tail)
    |head == item = lengthWithoutItem item tail
    |otherwise = 1 + lengthWithoutItem item tail

main = print $ lengthWithoutItem item list
    where
        item = 1
        list = [1, 1, 2, 3, 4]
