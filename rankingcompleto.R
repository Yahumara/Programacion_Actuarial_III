setwd("C:/Users/Angelica/Documents/Universidad/Tercer semetre/Programacion III/Calidad de Hospitales")

rankingcompleto <- function(resultado, num = "mejor"){
    #lectura de datos
    lect <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    #validez de estado y resultado
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
    hospital <- vector("character")
    state <- vector("character")
    todos <- levels(factor(lect$State))
    no <- lect[c(2,7,tu)]
   
     for (pa in todos){
        extrac <- subset(no, no$State==pa  & !no[[3]]=="Not Available")
        listord <- extrac[order(as.numeric(extrac[[3]]),extrac[[1]]),]
        
        if (num=="mejor"){
            peq <- listord[which.min(listord[[3]]),]
            re <- peq$Hospital.Name
            hospital <- c(hospital,re)
        }else if (num =="peor"){
            gra <-listord[which.max(listord[[3]]),]
            re <- gra$Hospital.Name
            hospital <- c(hospital,re)
        }else {
            re <- listord[num,1]
            hospital <- c(hospital,re)
        }
        state <- c(state,todos)
     }
    final <- data.frame(hospital,state)
}

head(rankingcompleto("ataque", 20), 10)
tail(rankingcompleto("neumonia", "peor"), 3)
tail(rankingcompleto("falla"), 10)
