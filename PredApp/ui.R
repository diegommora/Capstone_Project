library(shiny)

shinyUI(fluidPage(
    titlePanel("Best Prediction Text App!!!"),
    sidebarLayout(
        sidebarPanel(
            h2("Enter your sentence here:"),
            em("Note: this is a beta version so give us 
               some time to process"),
            textInput("caption","Sentence","Enter text here")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h2("Predicted Word:"),
            textOutput("word")
        )
    )
))
