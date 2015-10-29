module Test.ListWriter where

import Syntax.ListWriter
import Test.Hspec

listA :: ListM Int
listA = do
   element 1
   element 2

listE :: ListM Int
listE = fromList []

test :: IO ()
test = hspec $
   describe "ListWriter" $ do
      specify "toList" $ do
         toList listA `shouldBe` [1,2]
         toList listE `shouldBe` []
      specify "fromList" $ do
         fromList [1,2] `shouldBe` listA
         fromList [] `shouldBe` listE


