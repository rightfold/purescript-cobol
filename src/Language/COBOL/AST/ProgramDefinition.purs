module Language.COBOL.AST.ProgramDefinition where

import Language.COBOL.AST.DataStorageSection (DataStorageSection)
import Language.COBOL.AST.ProcedureSection (ProcedureSection)

type ProgramDefinition =
  { programID :: {name :: String, as :: String}
  , workingStorageSection :: DataStorageSection
  , localStorageSection :: DataStorageSection
  , linkageSection :: DataStorageSection
  , parameters :: Array Parameter
  , procedureSections :: Array ProcedureSection
  }

data Parameter
  = ByValueParameter { name :: String }
  | ByReferenceParameter { name :: String }
