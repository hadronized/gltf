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

module Codec.GLTF.Buffer where

import Data.Word ( Word64 )

data Buffer = Buffer {
    bufferLength :: Word64
  , bufferType :: BufferType
  , bufferURI :: Text 
  } deriving (Eq,Show)

data BufferType
  = BinaryBuffer
  | TextBuffer
    deriving (Eq,Show)

data BufferView = BufferView {
    bufferViewBufferID :: ID
  , bufferViewLength :: Word64
  , bufferViewOffset :: Word64
  , bufferViewTarget :: BufferTarget
  } deriving (Eq,Show)

data BufferTarget
  = ArrayBuffer
  | ElementArrayBuffer
  | MiscBuffer ID
    deriving (Eq,Show)
