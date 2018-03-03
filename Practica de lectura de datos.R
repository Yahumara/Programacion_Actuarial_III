Na <- data.frame(mtcars)
Na

dput(Na)

dput(Na, file="~/GitHub/Programacion_Actuarial_III/Carros.R")

CarrosAnnia <- dget(file="~/GitHub/Programacion_Actuarial_III/Carros.R")