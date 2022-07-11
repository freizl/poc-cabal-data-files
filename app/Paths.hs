{-
Use Paths_xxx works well for installed program but not during development
Create our own Paths module will alleviate the problem.
-}

module Paths_poc_cabal_data_files where

getDataFileName :: FilePath -> IO FilePath
getDataFileName = return
