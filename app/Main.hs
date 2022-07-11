module Main where

import Paths_poc_cabal_data_files
import System.Directory

main :: IO ()
main = do
  putStrLn "Hello, Haskell!\n"
  testFile "data/poc-cabal-data-file-1.txt"
  testFile "poc-cabal-data-file-1.txt"

testFile :: FilePath -> IO ()
testFile file = do
  test1 <- getDataFileName file
  test1Exist <- doesPathExist test1
  putStrLn ("Test File: " ++ file)
  putStr "\t Full Path: " >> putStrLn test1
  putStr "\t Does it exits? " >> print test1Exist
