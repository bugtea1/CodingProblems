import Control.Arrow


solve :: [Integer] -> [Integer]
solve [a,b,c,d,e,f] = [1-a, 1-b, 2-c, 2-d, 2-e, 8-f]


parseInput :: String -> [Integer]
parseInput = words >>> map (read :: String -> Integer)


createOutput :: [Integer] -> String
createOutput = map (show :: Integer -> String) >>> foldl (\ a b -> a ++ " " ++ b) ""


main :: IO ()
main = interact $ (parseInput >>> solve >>> createOutput)