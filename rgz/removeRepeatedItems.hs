removeRepeatedItems :: (Eq t) => [t] -> [t]
removeRepeatedItems [] = []
removeRepeatedItems (prevHead:tail)
    |not (null tail) && prevHead == head tail = removeRepeatedItems tail
    |not (null tail) = prevHead : removeRepeatedItems tail
    |otherwise = [prevHead]

main = print $ removeRepeatedItems list
    where list = ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
