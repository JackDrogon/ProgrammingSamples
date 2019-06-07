import System.IO

prompt :: String -> IO String
prompt text = do
    putStr text
    hFlush stdout
    getLine

main = do
    name <- prompt "What's your name? "
    putStrLn("Hey " ++ name ++ ", you rock!")
