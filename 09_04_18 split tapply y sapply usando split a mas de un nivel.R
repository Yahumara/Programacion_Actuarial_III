#Vectorizar una funcion

noise <- function(n,mean,sd){
    rnorm(n,mean,sd)
}

noise(5,1,2)

noise(1:5,1:5,2)

mapply(noise,1:5,1:5,2)
#mapply me sirve para que una misma funcion la pueda aplicar a un vector secuencial

str(tapply)
#x es un vector, INDEX es un factor o lista de factores, Fun es una funcion a aplicar
#... otros argumentos a pasar a FUN, simplify se debe simplificar el resultado.

x <- c(rnorm(10),runif(10),rnorm(10,1))

f <- gl(3,10)
f
#los resultados que me entrega tapply los tabula y funciona igual que los demas
tapply(x,f,mean)

tapply(x,f,mean,simplify=F)

str(split)
#x es un vector lista o data frame, f es un factor o lista de factores y drop
#indica si los factores vacios deberian de omitirse.

x <- c(rnorm(10),runif(10),rexp(10))

f <- gl(3,10)
f

split(x,f)

#Es comun primero aplicar split y despues lapply
lapply(split(x,f),mean)

library(datasets)
head(airquality) #con head solo te muestra 6 filas
split(airquality,airquality$Month)
sapply(split(airquality,airquality$Month),colMeans,na.rm=TRUE) 
#promedio segregado por cada mes

colMeans(airquality, na.rm = T) #Promedio acumulado de todos los meses

#split a mas de un nivel
x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1,f2)
x
str(split(x,list(f1,f2)))

data.frame(mtcars)
split(mtcars,mtcars$cyl)
sapply(split(mtcars,mtcars$cyl),colMeans) #Saca el promedio de todos, esto no lo pidio
sapply(split(mtcars$hp,mtcars$cyl),mean)#solo te da el hp promediado, esto si
#Hago la extraccion de caballos de fuerza y va a tomar los cilindros en promedio.


sapply(split(mtcars$mpg,mtcars$cyl),mean) #split separa
#El resultado quiere decir que un galon le alcanza para 26 millas en el de 4 
#cilindros