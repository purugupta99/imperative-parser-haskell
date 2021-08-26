{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Monad (void)

import Definitions as D
import Lexer as L

-- GRAMMAR
-- a represents arithmetic values
-- b represents boolean values

-- a ::= x | n | -a | a opa a 
-- b ::= true | false | not b | b opb b | a opr a 
-- opa ::= + | - | * | /
-- opb ::= and | or
-- opr ::= > | <
-- stmt ::= x := a | skip | stmt1; stmt2 | (stmt) | if b then stmt1 else stmt2 | while b do stmt


main :: IO ()
main = putStrLn "Hello, Haskell!"
