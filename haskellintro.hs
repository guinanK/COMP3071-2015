main = do
    putStr "enter name"
    name <- getLine
    putStr ("Hello, "++name++"How are you?\n")
--This is a comment
--This is using a fold(aka a reduce).
--sum x = foldl (+) 0 x
--summation x = foldl(\y z -> y + z) 0 x


--Implements Average
--average :: [numbers] -> number
--average x = (sum x) / (length x)

--Implements min
--min :: [comparable things] -> one thing(the minimum, hence the name)
--min x =

--Implements Max
-- max :: [comparable things] -> one thing(the maximum, hence the name)
--max x =
