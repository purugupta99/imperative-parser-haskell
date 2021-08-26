module Lexer where

import Control.Monad (void)

import Data.Void
import Data.Text 

import Text.Megaparsec
import Text.Megaparsec.Char as M
import Text.Megaparsec.Char.Lexer as L

type Parser a = Parsec Void String a 

sc :: Parser ()
sc = L.space (void spaceChar) lineCommment blockComment
    where
        lineCommment = L.skipLineComment "//"
        blockComment = L.skipBlockComment "/*" "*/"