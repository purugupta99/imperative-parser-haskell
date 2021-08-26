module Definitions where

-- Define the Data Structures to be used for different expressions and operators

-- Boolean Expressions
data BoolExpr 
    = BoolConst Bool 
    | Not BoolExpr
    | BoolBinary BoolExpr BoolBinOperator BoolExpr
    | RelationalBinary ArithmeticExpr RelationalBinOperator ArithmeticExpr
    deriving (Show)

-- Boolean Binary Operators
data BoolBinOperator
    = And 
    | Or
    deriving (Show)

-- Relational Binary Operators
data RelationalBinOperator
    = GreaterThan
    | LesserThan
    deriving (Show)

-- Arithmetic Expressions
data ArithmeticExpr
    = Var String
    | ConstInt Integer
    | Neg ArithmeticExpr
    | ArithmeticBinary ArithmeticExpr ArithmeticBinOperator ArithmeticExpr
    deriving (Show)

-- Arithmetic Binary Operators
data ArithmeticBinOperator
    = Add 
    | Subtract 
    | Multiply
    | Divide
    deriving (Show)

-- Statement Definitions
data Statement 
    = Seq [Statement]
    | Assignment String ArithmeticExpr
    | If BoolExpr Statement Statement
    | While BoolExpr Statement
    | Skip
    deriving (Show)