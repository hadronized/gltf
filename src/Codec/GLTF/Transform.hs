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

module Codec.GLTF.Transform where

import Linear.Matrix ( M44 )

type Translation = V3 Float
type Rotation = Quaternion Float
type Scale = V3 Float

data Transform
  = MatrixTransform (M44 Float)
  | TRSTransform (Maybe Transform) (Maybe Rotation) (Maybe Scale)
    deriving (Eq,Show)
