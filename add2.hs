import System.IO (readFile, appendFile)

readInt :: String -> Int
readInt x = read x :: Int

main :: IO ()
main = do
    fileContents <- readFile "addin.txt"

    let nums = map readInt (words fileContents)
        total = sum nums

    appendFile "addout.txt" (show total)

