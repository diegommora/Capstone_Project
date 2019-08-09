findwordsTri <- function(sentkn,trigramFinal,bigramFinal){
        l <- length(sentkn)
        predicttri <- trigramFinal %>% filter(X1==sentkn[l-1] & 
                                                      X2==sentkn[l])
        
        predictbi <- bigramFinal %>% filter(X1==sentkn[l])
        
        if (nrow(predicttri)!=0){
                predictW <- predicttri[3]
        }
        else if (nrow(predictbi)!=0){
                predictW <- predictbi[2]
        }
        else predictW <- "no hay nada"
        
        return(as.character(predictW[1,]))
}