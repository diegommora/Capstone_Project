sampleText <- function (filename, total, sampleSize) {  
        lineNumber = sample(total, sampleSize)
        sample <- list()
        for (line in lineNumber) {
                result <- scan(filename, what="character", skip= line, 
                               nlines=1, sep="\n", strip.white = TRUE, fileEncoding = 'UTF-8')
                sample <- list(sample, result)
        }
        return(unlist(sample))
}
