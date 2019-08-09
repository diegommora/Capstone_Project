tokenization <- function(text){
        numLines <- length(text)
        pattern <- "([[:alpha:]]+|[[:alpha:]]+['][[:alpha:]]+)"
        result <- regmatches(text,gregexpr(pattern,text))
        result <- unlist(result)
        result <- tolower(result)
        return(result)
}