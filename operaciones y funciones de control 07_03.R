setwd("~/GitHub/Programacion_Actuarial_III")

#Extraccion de valores faltantes
#Complete cases te muestra como TRUE las filas que tienen todos los datos y como False los que no

airquality[1:6,]
complete.cases(airquality[1:6,])
complete.cases(airquality[1:10,])
completos <- complete.cases(airquality)
data <- airquality[completos,]
#Al quedarse en blanco son todas las columnas
data[1:6,]
#Al hacer una extraccion desde un vector lo logicos me queo solo con los valores de TRUE.

#Algunas operaciones
x <- 1:4; y<- 6:9 #se pueden poner varias instucciones en el mismo renglon separadas por un ;
x+y
x>2
x>=2
y==8   #Para ver la igualdad de una variable se usa ==
x*y
x/y

x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y  #Se utiliza el simbolo de % para que haga la operacion corectamente de fila por columna como se realiza en las matrices sino lo hace directo de elemento por elemento
y%*%x  #No son conmutativas dan resultdos diferentes

#Estructuras de control uso del if
x<- 5
if(x>5) {
  "El numero es mayor a 5"
}else {
  "El numero es menor que 5"
  }
 
 
if (x<5) {
  "es menor a 5"
} else if (x<=10){
  "esta entre 5 y 10"
} else {
  "mayor a 10"
}
  

if (x>3){
  y <- 10
}else {
  y <- 0
}
y
#La expresion anterior es equivalente a:
y <- if(x>3) {
  10
}else {
  0
}
y

#Ciclos for
for(i in 1:10) {
  print(i)
}

for(i in c("a","b","c")) {
  print(i)
}

#La forma en que trabaja un for de R es mas similar al for each de visual basic
#se conoce el tamaño del vector
x <- c("a","b","c","d")
for(i in 1:4) {
  print(x[i])
}

#seq along es una secuencia a lo largo de x
for(i in seq_along(x)) {
  print(x[i])
}


for(letra in x) {
  print(letra)
}

for(i in 1:4) print(x[i])

#Los ciclos for pueden ser anidados
#seq len es una secuencia de una determinada longitud 
x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

#ciclos while
count <- 0
while(count<10){
  print(count)
  count <- count + 1
}


#rbinom genera un numero aleatorio
set.seed(1) #A partir de este numero se empiezan a generar los numeros aleatorios
z <- 5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5) #numero de aciertos en una cantidad de intentos, probabilidad de exitos
  if(moneda==1){   #caminata aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
}

set.seed(1) 
z <- 5
contador <- 0
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5) 
  if(moneda==1){   #caminata aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
  contador <- contador + 1
}
print("se realizaron "); print(contador); print("pasos")


set.seed(1) 
z <- 5
contador <- 0
while(z>=3 && z<=10){
  vec <- z
  moneda <- rbinom(1,1,0.5) 
  if(moneda==1){   #caminata aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
  contador <- contador + 1
  rbind(z)
  print(z)
}
print("se realizaron "); print(contador); print("pasos")
