import Control.Monad
import Data.Char

main = forever $ do
    putStrLn "Give me some input: "
    l <- getLine
    putStrLn $ map toUpper l
