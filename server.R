suppressPackageStartupMessages(c(
  library(shinythemes),
  library(shiny),
  library(tm),
  library(stringr),
  library(markdown),
  library(stylo)))

source("./include.R")
f4Data <- readRDS(file="./data/f4Data.RData")
f3Data <- readRDS(file="./data/f3Data.RData")
f2Data <- readRDS(file="./data/f2Data.RData")


shinyServer(function(input, output) {
  wordPrediction <- reactive({
    text <- input$text
    textInput <- cleanInput(text)
    wordCount <- length(textInput)
    wordPrediction <- nextWordPrediction(wordCount,textInput)
  }
  )
  output$predictedWord <- renderPrint(wordPrediction())
  output$enteredText <- renderText({ input$text }, quoted = FALSE)
}
)