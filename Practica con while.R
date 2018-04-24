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
