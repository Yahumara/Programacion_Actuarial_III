setwd("C:/Users/Angelica/Documents/Universidad/Tercer semetre/Programacion III/Specdata")
directorio= getwd()

corr <- function(directorio,horizonte= 0){
   
    
     res<- c()
    for(j in 1:332){
        lop <- read.csv(paste(formatC(j, width=3,flag= "0"),".csv",sep=""),header=TRUE)
        no<- na.omit(lop)
        row <- nrow(no)
        
        
        
        if(row > horizonte){
            rela2<- data.frame(no[,2])
            rela3<- data.frame(no[,3])
            corre <- cor(rela2,rela3)
            res<- c(res,corre)
        }
    }
    res
}

corr(directorio,20) #Ejemplo

