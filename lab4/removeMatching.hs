{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}

removeMatching :: (Eq t) => t -> [t] -> [t]
removeMatching item list = filter (/= item) list

main = print $ removeMatching item list
    where
        item = 1
        list = [1, 2, 1, 3, 1, 4, 5, 1]
