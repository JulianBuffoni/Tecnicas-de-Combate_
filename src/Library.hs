module Library where
import PdePreludat

type Horas = Number
type Objetivo = String
type Presion = Number
type Golpe = Number

--1

poderGolpe :: Horas -> Number
poderGolpe = (15*)

fortalezaObjetivo :: Objetivo -> Number
fortalezaObjetivo = (2*) . length

presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = poderGolpe horas / fortalezaObjetivo objetivo

--2

-- Gomu Gomu Elephant Gatling = gomuGomu
-- Golpes Normales Consecutivos = golpesNormales

gomuGomu :: Golpe
gomuGomu = poderGolpe 180

golpesNormales :: Golpe
golpesNormales = poderGolpe 240

presionGomuGomu :: Objetivo -> Presion
presionGomuGomu objetivo = gomuGomu / fortalezaObjetivo objetivo

--3

esDificil :: Objetivo -> Bool
esDificil objetivo =  presionGomuGomu objetivo < 100

focalizar :: Objetivo -> String
focalizar = take 7

presionNormalesConsecutivos :: Objetivo -> Presion
presionNormalesConsecutivos objetivo = golpesNormales / fortalezaObjetivo objetivo

focaliza :: Presion -> Bool
focaliza presion = presion >= 200 && presion <= 400

esAccesible :: Objetivo -> Bool
esAccesible = focaliza . presionNormalesConsecutivos . focalizar