freq.words <- function(tokentxt){
        freq <- table(tokentxt)
        freq <- sort(freq, decreasing = TRUE)
        freq <- as.data.frame(freq)
        return(freq)
}