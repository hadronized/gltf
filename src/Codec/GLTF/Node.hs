-----------------------------------------------------------------------------
-- |
-- Copyright   : (C) 2015 Dimitri Sabadie
-- License     : BSD3
--
-- Maintainer  : Dimitri Sabadie <dimitri.sabadie@gmail.com>
-- Stability   : experimental
-- Portability : portable
--
-----------------------------------------------------------------------

module Codec.GLTF.Node where

data Node = Node {
    nodeName :: Maybe Text
  , nodeChildren :: [ID]
  } deriving (Eq,Show)
