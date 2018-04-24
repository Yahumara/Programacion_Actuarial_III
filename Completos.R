setwd("C:/Users/Angelica/Documents/Universidad/Tercer semetre/Programacion III/Specdata")
directorio= getwd()

completos <- function(directorio,id=1:332){
   
     Comp <-c()
    
    for(n in id){
        
        lee <- read.csv(paste(formatC(n, width=3,flag= "0"),".csv",sep=""),header=TRUE)
        Comp<- c(Comp,sum(complete.cases(lee)))
    }
    me<-data.frame(id,Comp)
    me
}


completos(directorio,60:258) #ejemplo
