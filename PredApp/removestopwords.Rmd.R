removestop <- function(tokens){
        require(stopwords)
        token2 <- tokens[!tokens %in% stopwords("en")]
        return(token2)
}