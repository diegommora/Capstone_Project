sepngram <- function(ngram){
        pattern <- "([[:alpha:]]+|[[:alpha:]]+['][[:alpha:]]+)"
        result <- regmatches(ngram[,1],gregexpr(pattern,ngram[,1]))
        df <- data.frame(matrix(unlist(result), nrow=length(result), byrow=T))
        df[,ncol(df)+1] <- ngram[,2]
        return(df)
}