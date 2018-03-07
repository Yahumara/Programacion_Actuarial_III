#Dump y Source 
#trabajan con las instrucciones de codigo que permitiran volver a construir un objeto en lugar de obtenerlo en una ubicacion guardada.

setwd("~/GitHub/Programacion_Actuarial_III")
x <- "Programacion Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
x
y
source("data.R")


#Conexiones
con <- url("https://www.fcfm.buap.mx/")
x <- readLines (con)
x[7] <- "\t<title>FCFM:Estariamos mejor con otro director</title>"
writeLines(x,"FCFM.html")

#si quiero solo leer unas lineas tambien se puede agregandole el nuero de lineas

#Operadores para extraer subconjuntos
#[] Regresa un objeto de la misma clase original si extraigo una parte de una lista sera una lista la parte extraida.
#[[ Es usado para extraer un elemento d euna lista o de un data frame, solamente extrae un dato
#$ se usa para extraer elementos de una lista o data frame por nombre

#Extraccion de elementos de un vector
#Creamos un vector
x <- c("a","b","c","c","d","e")
#Veamos el vector
x
#Extraemos elementos con []
x[1]
x[2]
#Tambien podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una restriccion
x[x>"b"]
#De manera equivalente se puede obtener un vector logico
u <- x=="c"
u
x[u]
x[5-3]

#Extraccion de elementos de una lista
#Creamos una lista
x <- list(foo=1:4,bar=0.6)
x
x[1]     #Conserva la clase del objeto de donde fueron extraidos los elementos
#El resultado es una lista que contiene al vector de la secuencia
x[[1]]  #Conserva la clase del objeto extraido
#El resutado es el vector de la secuencia de numeros

x$foo
#El resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]

x <- list(foo=1:4,bar=0.6,baz= "Hola")
x[c(1,3)]
#Extrae los elementos no secuenciales 1 si, 2 no, 3 si
x[[c(1,3)]]
#Extrae secuencialmente desde los elementos extraidos
#Primero extrae el 1er elemento y de hay extrae la 3ra posicion

name <- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extracciones con $ es necesario escribir el nombre del objeto que quiero extraer ya que no es capaz de realizar evaluaciones

#Para anidar extracciones se utilizan los [[]]
#Se pueden extraer elementos de los elementos extraidos
x <- list(a= list(10, 12, 14), b= list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]

x[[c(2,1)]]

#Extraccion de una matriz
x <- matrix(1:6,2,3)
x
#El resultado es un vector
x[1,2]
x[2,1]
#si dejamos solamente el espacio el resultado sera un vector
x[1,]
x[,2]

#Con drop=FALSE, se mantiene la dimension y el resultado sera una matriz
x[1,2, drop=F]

#Si usamos drop=FALSE, el resultado sera una matriz
x[1, ,drop=F]

#Creamos listas donde busca lo mas cercano o lo que se le parece al nombre que le estas dando
x <- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a",exact=F]]