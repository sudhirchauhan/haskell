---
import System.Environment (getArgs)

interactWith function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

-- I think do keyord is the fabled monad which interacts with external world.

main = mainWith myFunction
  where mainWith function = do
        args <- getArgs
        case args of
          [input,output] -> interactWith function input output
          _ -> putStrLn "error: exactly two arguments needed."
myFunction = functionToTest

-- functionToTest is the function we will be pass to main




