{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}

evenIncrement :: (Integral t) => [t] -> [t]
evenIncrement list = map (\it -> if even it then it + 1 else it) list

main = print $ evenIncrement list
    where list = [1, 2, 3, 4, 5, 6]
