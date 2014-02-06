{-
	From command line:
	
	> runhaskell Main.hs /path/to/source.obe
-}


module Main where

	
	import System.Environment
	
	import Par
	
	
	main = do
				path <- getArgs
				source <- readFile $ head path
				let abs = pModule $ myLexer source
				return abs
