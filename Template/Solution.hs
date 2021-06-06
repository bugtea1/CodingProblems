import Control.Arrow


solve :: () -> ()
solve _ = ()


parseInput :: String -> ()
parseInput _ = ()


createOutput :: () -> String
createOutput _ = "Hello, World!\n"


main :: IO ()
main = interact $ (parseInput >>> solve >>> createOutput)