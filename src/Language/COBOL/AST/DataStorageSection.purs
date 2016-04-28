module Language.COBOL.AST.DataStorageSection where

type DataStorageSection = Array DataDescriptionEntry

type DataDescriptionEntry =
  { level :: Int
  , name :: String
  , picture :: Picture
  }

type Picture = Array PictureElement

data PictureElement
  = AlphanumericPictureElement
  | NumericPictureElement
