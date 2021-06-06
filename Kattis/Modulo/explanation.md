The core of the solution will be a function ```solve :: [Integer] -> Integer``` where
```
solve [1,2,3,4,5,6,7,8,9,10] = 10
solve [42,84,252,420,840,126,42,84,420,126] = 1
solve [39,40,41,42,43,44,82,83,84,85] = 6
```
and so on.


The steps that this function will perform are:
1) Get the list of all numbers, modulo 42.
2) Remove duplicates.
3) Get length of resulting list.


To get the input into the correct format we use a function ```parseInput :: String -> [Integer]```.
The steps that this function performs are:
1) Read the entire input stream (obtain a string).
2) Split by lines into a list of strings.
3) Convert list of strings to list of integers.


To get the output into the correct format we convert an integer to a string.
This will be done by a function ```createOutput :: Integer -> String```.


The three functions ```parseInput```, ```solve```, ```createOutput``` are stringed together
with the function ```interact :: (String -> String) -> IO ()``` available in the standard prelude.
This function takes a pure ```String -> String``` function and creates an ```IO``` action that
will handle all interactions in the program.
We will pass to this function the composition ```parseInput >>> solve >>> createOutput```.