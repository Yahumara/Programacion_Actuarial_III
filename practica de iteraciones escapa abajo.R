vec <-
  set.seed(1) 
z <- 5
contador <- 0
while(z>=3 && z<=10){
  vec <- c(vec,z)
  moneda <- rbinom(1,1,0.5) 
  if(moneda==1){   #caminata aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
  contador <- contador + 1
}
print(vec); print("se realizaron "); print(contador); print("pasos")
plot(vec) #solo te muestra los puntos
plot(vec,type="b") #te muetra los puntos unidos por lineas



set.seed(1) 
tries <- 10000
down <- 0
up <- 0
for(j in 1:tries){
  z <- 5
  x <- vector("numeric")
  while(z>=3 && z<=10){
    moneda <- rbinom(1,1,0.5) 
    x <- c(x,z)
    if(moneda==1){   #caminata aleatoria
      z <- z + 1
    } else {
      z <- z - 1
    }
  }
  
  if (z < 3){
    down <- down + 1
  } else if (z > 10){
    up <- up + 1
  }
}

paste("En",tries,"intentos, se escapa",down,"veces por abajo y",up,"veces por arriba")
