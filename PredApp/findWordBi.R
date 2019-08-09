findwordsBi <- function(sentkn,bigramFinal){
        l <- length(sentkn)
        predictbi <- bigramFinal %>% filter(X1==sentkn[l])
        
        if (nrow(predictbi)!=0){
                predictW <- predictbi[2]
        }
        else predictW <- "no hay nada"
        
        return(as.character(predictW[1,]))
}