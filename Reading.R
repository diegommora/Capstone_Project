# Create a connection to a particular .txt file

con <- file("en_US/en_US.twitter.txt","r")
text <- readLines(con)
close(con)
rm(con)

# sample
x <- length(text)
sam <- sample(x,x*0.01)
textSM <- text[sam]

# size of the files
size <- file.size("en_US/en_US.blogs.txt")

# max length of the file
len <- sapply(text,nchar)
max(len)
