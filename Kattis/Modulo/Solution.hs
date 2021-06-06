import Control.Arrow
import qualified Data.Set as Set


solve :: [Integer] -> Integer
solve = map (\x -> mod x 42) >>> removeDuplicates >>> length >>> toInteger
    where
        removeDuplicates :: [Integer] -> [Integer]
        removeDuplicates = Set.fromList >>> Set.toList


parseInput :: String -> [Integer]
parseInput = lines >>> map (read :: String -> Integer)


createOutput :: Integer -> String
createOutput x = (show x) ++ "\n"


main :: IO ()
main = interact $ (parseInput >>> solve >>> createOutput)