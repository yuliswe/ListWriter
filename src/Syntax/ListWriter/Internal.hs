{-# LANGUAGE Trustworthy #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveFunctor #-}

module Syntax.ListWriter.Internal where

import Control.Monad.Writer (Writer(..), runWriter, tell, MonadWriter(..))

newtype ListM' a x = ListM {
      unListM :: Writer [a] x
   } deriving (Functor, Applicative, Monad, MonadWriter [a], Show, Ord, Eq)

type ListM a = ListM' a ()


toList :: ListM a -> [a]
toList m = snd $ runWriter $ unListM m


fromList :: [a] -> ListM a
fromList = tell


element :: a -> ListM a
element a = fromList [a]


-- addElems :: [a] -> ListM a -> ListM a
-- addElems ls m = m >> tell ls


-- empty :: ListM a
-- empty = ListM $ tell []
