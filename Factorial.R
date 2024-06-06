# Cargar bibliotecas necesarias
library(tidyverse)
library(psych)
library(readxl)

datos <- read_excel("datos.xlsx", sheet = "ansiedad")

head(datos)

# Eliminar cualquier fila con valores NA
datos <- na.omit(datos)

# Realizar el Análisis Factorial Exploratorio (EFA) utilizando el método de componentes principales y rotación Varimax
efa_result <- principal(datos, nfactors = 3, rotate = "varimax")

# resultados 
print(efa_result, digits = 2)
