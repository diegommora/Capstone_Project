library(shiny)
library(dplyr)
library(stopwords)


load(file="biFinalNSW.RData")
load(file="triFinalNSW.RData")
load(file="quadFinalNSW.RData")
source("wordpredNSW.R")
source("tokenization.R")
source("findWordBi.R")
source("findWords.R")
source("findWordTri.R")
source("removestopwords.Rmd.R")

shinyServer(function(input, output) {
    
    word <- reactive({
        sentenceIn <- input$caption
        wordpredictNSW(sentenceIn)
    })

    output$word <- renderText({

       word()

    })

})
