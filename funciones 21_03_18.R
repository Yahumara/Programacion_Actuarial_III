#Funciones

suma2 <- function(x,y){
  x+y
}
suma2(1,3) #4

mayor10 <- function(x){
  seleccionados <- x>10
  x[seleccionados]
}
mayor10(1:20) # me da los numeros del 11 al 20

mayor <- function(x, n=10){
  seleccionados <- x>n
  x[seleccionados]
}


mayor <- function(x, n=10){
  x[x>n]
}
mayor10(1:20)


#Dado que la funcion tiene n=10 al no colocar el argumento en un
mayor(1:20)
#En una funcion si yo escribo los argumentos en orden no es necesario escribir el nombre del argumento
mayor(1:20, 15) #me da los resultados del 16 al 20
#Si escribes los argumentos en desorden, si es necesario
mayor(n=15,x=1:20)

promedioCol <- function(x, quitarNA=TRUE){
  nc <- ncol(x)
  medias <- vector("numeric", nc)
  for(i in 1:nc){
    medias[i] <- mean(x[,i], na.rm=quitarNA)
  }
  medias
}

x <- matrix(1:100,20,5)
promedioCol(x)

#se conoce como una operacion perezosa te enseña los resultados como los va haciendo y si encuentra un error hay se para
f <- function(a,b){
  a^2
}
f(2)
#Marca error por que no tiene valor en b si se lo coloque corre de manera normal y deja de mandarme el error
g <- function(a,b){
  print(a)
  print(b)
}
g(3)

#Los ... significan un argumento, plot necesita x y y pero puede tener otra serie de argumentos que no sean requeridos por defolt
miplot <- function(x,y,tipo="l",...){
  plot(x,y,type = tipo,...)
}
miplot(1:10,10:1)
plot(1:10,10:1)

miplot(1:10,10:1,main="Mi grafica")
plot(1:10,10:1,main="Mi grafica")
miplot(1:10,10:1,main="Mi grafica",perro="123")
#
#Los argumentos despues de los puntos suspensivos es necesario que los mandes lamar con todo y nombre
paste("Jose","Paz","Alex","Arlet","Susie","/")
paste("Jose","Paz","Alex","Arlet","Susie",sep="/")

mipaste <- function(sep=" ", ...){
  paste(...,sep=sep)
}
mipaste ("/","Jose","Paz","Alex","Arlet","Susie")

#Tarea
install.packages("swirl")
library(swirl)
swirl
#Poner tu nombre Annia Benavidez
#cuando hay puntos presionas enter para continiar
#para salir puedes presionar esc
#Instalar R programing
#escoges 1


