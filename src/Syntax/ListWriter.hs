{-# LANGUAGE Safe #-}
-----------------------------------------------------------------------------
-- |
-- Module      :  Syntax.ListWriter
-- Copyright   :  BSD
--
-- Maintainer  :  ylilarry@gmail.com
-- Stability   :  Experimental
-- Portability :  Non-portable (GHC extensions)
--
-- This package allows you to define a list constant using Monadic syntax.
--
-- It can be used to define a list constant in your program in a better looking syntax than overhead @[@, @]@, and @,@.
--
-- Other than that the package is not really useful.
--
-- === Example
--
-- @
-- listA :: [Int]
-- listA = toList $ do
--    element 1
--    element 2
--    element 3
-- @
--
-- >>> print listA
-- [1,2,3]
--
-----------------------------------------------------------------------------

module Syntax.ListWriter (
        ListM
      , fromList
      , toList
      , element
    ) where

import Syntax.ListWriter.Internal

