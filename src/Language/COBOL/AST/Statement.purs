module Language.COBOL.AST.Statement where

import Data.Either (Either)

data Statement
  = ArithmeticStatement ArithmeticOperator Identifier Identifier Identifier

  | AcceptStatement Identifier
  | DisplayStatement (Array Identeral) Boolean

  | CallStatement Identifier (Array Argument)
  | GobackStatement

  | ContinueStatement
  | IfStatement Condition (Array Statement) (Array Statement)

data ArithmeticOperator = Add | Subtract | Multiply | Divide

type Identifier = String

type Identeral = Either Identifier Literal

data Literal
  = AlphanumericLiteral String

data Argument
  = ByValueArgument Identifier
  | ByReferenceArgument Identifier

data Condition
  = RelationCondition RelationOperator Identeral Identeral

data RelationOperator
  = IsEqualTo
