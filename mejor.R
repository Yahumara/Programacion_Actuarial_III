setwd("C:/Users/Angelica/Documents/Universidad/Tercer semetre/Programacion III/Calidad de Hospitales")


mejor <- function(estado, resultado){
   #lectura de datos
     lect <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
    
     #validez de estado y resultado
    Edo <- unique(lect$State) #unique devuelve la columna de state eliminando las demas
    if(!estado %in% Edo){
        stop("Estado invalido")
    }
    
    if(!((resultado=="falla") | (resultado=="neumonia") | (resultado=="ataque"))){
        stop("Resultado invalido")
    }
    
    #Regresar el nombre del hospital
 tu <- if (resultado =="ataque"){
     11
 }else if(resultado =="falla"){
     17
 }else{
     23
 }
  
 esta <- subset(lect,  as.character(lect$State) == estado) #Devuelve los datos con las condiciones dadas
 extrae <- esta[, tu]
 extrae <- suppressWarnings(as.numeric(extrae))
 mini <- esta[which.min(extrae),]
 ordena <- mini[order(mini$Hospital.Name, na.last = NA),]
 resu<- ordena[1,2]
 resu
}

mejor("TX", "ataque")
mejor("TX", "falla") 
mejor("MD", "ataque")
mejor("MD", "neumonia")
mejor("BB", "ataque")
mejor("NY", "atakue")
