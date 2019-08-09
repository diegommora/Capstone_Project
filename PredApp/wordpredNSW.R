wordpredictNSW <- function(sentence){
        require(dplyr)
        biFinalNSW <- load(file="biFinalNSW.RData")
        triFinalNSW <- load(file="triFinalNSW.RData")
        quadFinalNSW <- load(file="quadFinalNSW.RData")
        sentencetkn <- tokenization(sentence)
        sentencetkn <- removestop(sentencetkn)
        l <- length(sentencetkn)
        if(l>=3){
                word <- findwordsQuad(sentencetkn,quadgFinalNSW,trigFinalNSW,
                                      bigFinalNSW)
        }
        else if(l==2){
                word <- findwordsTri(sentencetkn,trigFinalNSW,
                                     bigFinalNSW)
        }
        else if(l==1){
                word <- findwordsBi(sentencetkn,bigFinalNSW)
        }
        return(word)
}