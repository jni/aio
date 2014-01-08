import System.IO (readFile, writeFile)

readInt :: String -> Int
readInt x = read x :: Int

join :: [a] -> [[a]] -> [a]
join s [] = []
join s [y] = y
join s (y:ys) = y ++ s ++ join s ys

main = do
    iostring <- readFile "sitin.txt"
    let nums = map (map readInt) (map words (lines iostring))
        seats = product (head nums)
        tickets = head (last nums)
        sitting = min seats tickets
        standing = max 0 (tickets - seats)
    writeFile "sitout.txt" (join " " (map show [sitting, standing]))

