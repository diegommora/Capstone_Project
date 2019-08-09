findwordsQuad <- function(sentkn,quadgramFinal,trigramFinal,bigramFinal){
        l <- length(sentkn)
        predictquad <- quadgramFinal %>% filter(X1==sentkn[l-2] & 
                                                    X2==sentkn[l-1] &
                                                    X3==sentkn[l])

        predicttri <- trigramFinal %>% filter(X1==sentkn[l-1] & 
                                        X2==sentkn[l])
               
        predictbi <- bigramFinal %>% filter(X1==sentkn[l])
                
        if (nrow(predictquad)!=0){
                predictW <- predictquad[4]
        }
        else if (nrow(predicttri)!=0){
                predictW <- predicttri[3]
        }
        else if (nrow(predictbi)!=0){
                predictW <- predictbi[2]
        }
        else predictW <- "no hay nada"
        
        return(as.character(predictW[1,]))
}