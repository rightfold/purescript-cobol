module Language.COBOL.AST.ProcedureSection where

import Language.COBOL.AST.Statement (Statement)

type ProcedureSection =
  { name :: String
  , paragraphs :: Array ProcedureParagraph
  }

type ProcedureParagraph =
  { name :: String
  , sentences :: Array Sentence
  }

type Sentence = Array Statement
