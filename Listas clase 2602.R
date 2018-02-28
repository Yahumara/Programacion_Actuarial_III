#Lista
x <- list(1, "a", TRUE, 3+2i, 5L, 1:50)
x
#Todos los elementos de una lista mantienen la clase que originalmente tenian al nombrarlos en la lista

#Matrices
#Las matrices son vectores con un atributo llamado dimension, este atributo es un vector en si mismo compuesto de dos elementos
m <- matrix(nrow = 2, ncol=3) #Esta es una matriz desordenada
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)

#Como llenar una matriz
m <- matrix(data = 1:6, nrow=2, ncol=3) #Matrix ordenada
m <- matrix(1:6,2,3)
m
#Estas son formas equivalentes de hacerlo pra ambas matrices
#La manera automatica de llenarse fue columna por columna
#Si yo quisiera que s ellenara fila por fila seria:
m <- matrix(data = 1:6, nrow=2, ncol=3, byrow= TRUE)
m <- matrix(1:6,2,3,T)
m

#Una manera alternativa de crear una matriz es desde un vector y modificar su dimension
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra forma de crear una matriz es uniendo diferentes vectores
x <- 1:3
y <- 10:12

#CBind va a unir columnas y RBind une filas
cbind(x,y)
rbind(x,y)

#Factores
#Factores sirve para variables que no son numericas
x <- factor(c("Si", "Si", "No", "No", "Si"))
x

#Factores por orden alfabetico
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"))
x
#table te dice cuantas veces aparece cada una de las cosas
table(x)
unclass(x)

#Factores con orden definido
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"),levels = c("Rojo","Amarillo","Verde","Naranja"))
x

unclass(x)


#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x)       #Detecta los valores faltantes
is.nan(x)      #Valor no numerico que no es faltante

y <- c(1,2,NaN,10,3)
is.na(y)      #Detecta los valores faltantes
is.nan(y)     #Valor no numerico que no es faltante


#Data Frames puede tener elementos de diferentes clases y se utiliza para matrices.
#foo y bar son variables pueden ser las que sean.
na <- data.frame(foo = 1:4, bar = c(T, T, F, F))
na

nrow(na)   #Cuenta el numero de filas
ncol(na)   #Cuenta el numero de columnas

mo <- 1:3
names(mo)
names(mo) <- c("foo", "bar", "norf") #Almacena el nombre de los elementos
mo
names(mo)

nu <- list(a=1,b=2,c=3)
nu

ma <- matrix(1:4, nrow=2, ncol=2)
ma
dimnames(ma) <- list(c("a", "b"), c("C", "d"))
ma
