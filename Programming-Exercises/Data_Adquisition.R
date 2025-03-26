###Importando archivos y paquetes

#El comando que se utiliza por defecto para instalar archivos es
#install.packages("nombrePaquete")

#Por ejemplo: install.packages("ggplot2")

#Luego siempre debemos hacer uso del comando: library(nombrePaquete)
#para llamar a nuestra libreria.

#Para acceder a la descripcion de un paquete:
packageDescription("ggplot2")

#Para ver la ayuda del paquete
help(package = "ggplot2")

#Paquetes mas populares para carga de datos:
#SQLdf, RODBC, RPostgresSQL, RSQLite, readxl

#Para manipulacion de datos:
#plyr, reshape2, stringr

#Para visualizacion de datos e informacion:
#ggplot2, rgl, shiny

#Para modelizacion:
#caret, car, forecast

#Ahora si, empecemos a importar algunos archivos! Lo primero 
#que tenemos que tener en cuenta es nuestro directorio. 

getwd()

dir() #me muestra los archivos del directorio

setwd("C:/Users/layla/Escritorio")

getwd() ## verifico si me modifico la ruta

setwd("C:/Users/layla/Escritorio/Lay/Docencia/Netzum/2. Manipulacion y Transformacion de Datos con R/Datasets")

getwd()

#Otros comandos importantes

#objects() me lista los objetivos que tengo en memoria
#rm("nombreObjeto") elimina un objeto

#Leemos nuestro primer archivo
DatosEPH <- read.csv2("DatosEPH2016.csv", 
                      header = T)
View(DatosEPH)

#Si quisiera eliminar:
#rm(DatosEPH)

#Leemos nuestro segundo archivo
empleados <- read.csv2("empleados.csv", sep = ",")

#Leemos nuestro tercer archivo
#install.packages("readxl")
#library(readxl)
clientes <- readxl::read_excel("Clientes.xlsx")

#Leemos nuestro cuarto archivo
customerProfitability <- readxl::read_excel("Customer Profitability Sample.xlsx")

#Leemos nuestro quinto archivo
precioAvisos <- read.csv(file = 'https://raw.githubusercontent.com/martintinch0/CienciaDeDatosParaCuriosos/master/data/precioBarrios.csv',
                         sep=';',
                         stringsAsFactors = FALSE)
View(precioAvisos)

#Con stringsAsFactors = FALSE estamos indicandole a R que no
#queremos que convierta nuestros datos en factores

#Por ultimo y no menos importante, como creamos un proyecto en R?