module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "presionGolpe" $ do
    it "Funcion No hace Kabool" $ do
      presionGolpe 200 "bolsa de entrenamiento" `shouldBe` 68.181818182
  describe "esDificil" $ do
      it "Ta complicao" $ do
        esDificil "bolsa de entrenamiento" `shouldBe` True
      it "EZ" $ do
        esDificil "puf" `shouldBe` False
  describe "esAccesible" $ do
      it "Puedo :)" $ do
        esAccesible "bolsa de entrenamiento" `shouldBe` True
      it "Let me in!!! Let me in!!!" $ do
        esAccesible "puf" `shouldBe` False