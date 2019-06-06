fact :: Integer -> Integer
fact x = if x <= 1 then 1 else fact(x - 1) * x



-- if 语句：
h1 = if 1 == 1 then "awesome" else "awful" -- haskell = "awesome"

-- if 语句也可以有多行，注意缩进：
h2 = if 1 == 1
            then "awesome"
            else "awful"




-- case 语句
-- 解析命令行参数：
case args of
  "help" -> printHelp
  "start" -> startProgram
  _ -> putStrLn "bad args"
