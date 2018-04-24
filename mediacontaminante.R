setwd("C:/Users/Angelica/Documents/Universidad/Tercer semetre/Programacion III/Specdata")
directorio= getwd()

mediacontaminante <- function(directorio,contaminante, id= 1:332){
    col <-c()
        for(m in id){
            
            lectu <- read.csv(paste(formatC(m, width=3,flag= "0"),".csv",sep=""),header=TRUE)
            
            if (contaminante=="nitrate"){
                col<- c(col,lectu$nitrate)
            }else if (contaminante == "sulfate"){
                col<- c(col,lectu$sulfate)
            }
        }
    result <- mean(col,na.rm = TRUE)
    result
}
    
mediacontaminante(directorio,"nitrate",c(2,30,220,300)) #Ejemplo





