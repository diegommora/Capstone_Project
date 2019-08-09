threegrams <- function (tokentxt){
        i <- 0
        ngram <- character(length = length(tokentxt))
        for (i in 1:length(tokentxt)){
                ngram[i] <- paste(tokentxt[i],tokentxt[i+1],tokentxt[i+2],
                                  sep = " ")
                i <- i+1
        }
        return(ngram)
}