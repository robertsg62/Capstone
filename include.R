suppressPackageStartupMessages(c(
  library(shinythemes),
  library(shiny),
  library(tm),
  library(stringr),
  library(markdown),
  library(stylo)))

f4Data <- readRDS(file="./data/f4Data.RData")
f3Data <- readRDS(file="./data/f3Data.RData")
f2Data <- readRDS(file="./data/f2Data.RData")

dataCleaner<-function(text){
  
  cleanText <- tolower(text)
  cleanText <- removePunctuation(cleanText)
  cleanText <- removeNumbers(cleanText)
  cleanText <- str_replace_all(cleanText, "[^[:alnum:]]", " ")
  cleanText <- stripWhitespace(cleanText)
  
  return(cleanText)
}

cleanInput <- function(text){
  
  textInput <- dataCleaner(text)
  textInput <- txt.to.words.ext(textInput, 
                                language="English.all", 
                                preserve.case = TRUE)
  
  return(textInput)
}


nextWordPrediction <- function(wordCount,textInput){
  
  if (wordCount>=3) {
    textInput <- textInput[(wordCount-2):wordCount] 
    
  }
  
  else if(wordCount==2) {
    textInput <- c(NA,textInput)   
  }
  
  else {
    textInput <- c(NA,NA,textInput)
  }

  wordPrediction <- as.character(
    f4Data[f4Data$unigram==textInput[1] & 
    f4Data$bigram==textInput[2] & 
    f4Data$trigram==textInput[3],][1,]$quadgram)
  
  if(is.na(wordPrediction)) {
    wordPrediction1 <- as.character(
      f3Data[f3Data$unigram==textInput[2] & 
      f3Data$bigram==textInput[3],][1,]$trigram)
    
    if(is.na(wordPrediction)) {
      wordPrediction <- as.character(
        final2Data[f2Data$unigram==textInput[3],][1,]$bigram)
    }
  }
  
  
  print(wordPrediction)
  
}