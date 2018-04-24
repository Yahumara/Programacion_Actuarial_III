#Lectura y escritura de datos

#dput y dget

#1.-creo el objeto
y <- data.frame(a=1,b="a")
y
#2. Estudio la manera en que se guardara
dput(y)
#3Lo guardo en mi disco duro
dput(y, file="/GitHub/Programacion_Actuarial_III/y.R")
#4. Genero un nuevo objeto a partir de la informacion guardada


#Tarea almacenar en tu disco duro la base de datos
#mtcars en un archivo "carros.R" y posteriormente guardarlo en una dataframe