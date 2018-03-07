Pa <- data.frame(mtcars)
Pa

dput(Pa)

dput(Pa, file="~/GitHub/Programacion_Actuarial_III/CARROS.R")

CarrosAnnia <- dget(file="~/GitHub/Programacion_Actuarial_III/CARROS.R")