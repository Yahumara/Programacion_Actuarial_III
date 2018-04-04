#Scoping rules

lm #regresion lineal
lm <- function(x){x*x} #Funcion que te inventas
lm
rm(lm) #borra la que inventaste
lm   #Te vuelve a creeal la original lm

search() #la lista de busqueda es accesible a traves de esta funcion
#Poner library(swirl) parq ue cargue en la lista de busqueda
search()

f <- function(x,y){
x^2 + y/z
}

hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
  potencia
}

cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia (2)

cubica(3)
cuadrada(2)

ls(environment(cubica))
get("n",environment(cubica))

ls(environment(cuadrada))
get("n",environment(cuadrada))

y <- 10
f <- function(x){
  y <- 2
  y^2+g(x)
}

g <- function(x){
  x*y
}

f(3)

#Dates and Times en R
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

#MaryPaz 19/06/1998
inicio <- unclass(as.Date("1998-06-19"))
final <- unclass(as.Date("2018-04-02"))
final-inicio  #Dias vividos

#POSIXct es un entero muy grande; util al guardar los datos en una data frame
#POSIXlt es como una lista y guarda un conjuto de informacion util como dia de
#la semana, di del año, el mes, dia del mes

weekdays(as.Date("1998-06-26"))
a <- as.POSIXct("1998-06-26")  #Almacenamiento de fechas
b <- as.POSIXlt("1998-06-26")

#month dice el nombre del mes
#weekdays dice el nombre del dia de la semana
#quarter dice el trimestre en el que esta