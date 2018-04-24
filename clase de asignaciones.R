#Aqui se esta realizando una asignacion
x <- 1
x <- 2
#La asignacion no me permitio visualizar el resultado, para ellos solicito una impresion
print(x)
#al poner mayuscula que no es definida me marcara error
print(X)
#La alternativa es solicitar una impresion implicita
x

#La asignacion puede hacerse tambien en textos
msg <- "Hola"

#Al solicitar una impresion me debera enseñar el mensaje
print(msg)

x <- #Expresion incompleta para salir de ella (dejar de ejecutar) utilizo las flechitas y le doy esc
    3
#Impresion de un arreglo (genera una secuencia numerica)
x <- 1:20
x

y <- 3:9
y
z <- 99:43
z

#El operador ":" me permite generar secuencias numericas de un principio a un fin"
w <- 3:14.5
w
#En el caso de trabajar con decimales me genera secuencias hasta los enteros correspondientes

#Aqui si funciona el infinito y se denota como Inf

#NaN significa not number que no hay un resultado exacto, representa un valor indefinido

# R nos permite trabajar con conceptos matematicos como los numeros complejos e infinitos.
Inf
1/0
#Es posible hacer algunas operaciones con este valor
exp(-Inf) #0
Inf + Inf #Inf
Inf - Inf #Nan
Inf * Inf #Inf
Inf / Inf #Nan

#Cada objeto tiene sus propios atributos los cuales se pueden

#Es posible crear un vector con la funcion c()
x <- c(TRUE, FALSE, TRUE, F, F, T) #Logical
x <- c(1L, 3L, 5L, -4L)   #iNTEGER
x <- c(1,3,5,-4)          #Numeric
x <- c(1+1i,3+4i,-5-6i)   #Complex
x <- c("a","b","c","Hola","Mundo")  #Character

#Otro posible camino seria con la funcion vector
x <- vector("numeric", length = 10 )
x #El vector se crea vacio

y <- c(1.7,"a")        #Caracter
y
y <- c(TRUE,2)         #Numeric
y <- c(TRUE,2L)        #Integer
y <- c(FALSE, 2L, 5, 5+4i)   #Complex
y

#La clase dominante es caracter y le sigue el complejo despues numerico, inteller y logical
#Los objetos se pueden coaccionar con "as."
#NA significa qe no hay un valor 

#Coercion forzada
x <- 0:6                 #Integer
as.numeric(x)            #Numeric
as.logical(x)            #Logcal- los 0 se vilven false y lo demas true
as.character(x)          #Character- todo es texto

#Errores en la coercion forzada
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)
#Aparece NA por que es una coercion no es posible y genera un valor faltante es decir que no hay un valor numerico

