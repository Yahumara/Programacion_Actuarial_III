#Funciones de ciclo
lapply
#x es el objeto que voy a aplicar
#FUN es la funcion
# || se pueden leer como o
#Entorno: coleccion de simbolos y valores

#lapply te ayuda a sacar el promedio
x <- list(a=1:5,b=rnorm(10000))
x
lapply(x,mean) 

x <- list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x,mean)

x <- 1:4
lapply(x,runif)

#Los numeros que genera runif se encuntran entre 15 y 5
x <- 1:4
lapply(x,runif, max=15,min=5)

#El resultado lo entrega como un vector por que el tamaño de los elementos de la lista es 1
x <- list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x,mean)
sapply(x,mean)


str(apply)


x <- matrix(rnorm(200),20,10)
apply(x,2,mean) #margen 2 es columna
apply(x,1,sum) #margen 1 es fila


x <- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))
#da 20 resultados por que lo hizo sobre las filas
#Aplica quantil a cada una de las filas con el 25% y el 75% el primero son los que estan por encima y el segundo son los que estan por abajo

a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)

rowMeans(a,dims=2)

rowMeans(a,dims=1)

list(rep(1,4), rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)
    