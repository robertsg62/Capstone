suppressPackageStartupMessages(c(
  library(shinythemes),
  library(shiny),
  library(tm),
  library(stringr),
  library(markdown),
  library(stylo)))

shinyUI(
  navbarPage("", theme = shinytheme("flatly"),
    tabPanel("Application",
      fluidRow(
        column(2), 
        column(8,
          h2("Coursera Data Science Capstone Project"),
          align="center"
        ),
        column(2)
      ),
      fluidRow(
        column(3), 
        column(6,
          tags$div(textInput("text", label = h3("Enter text here:"), value = ),
            tags$span(style="color:grey",("Only English words are supported.")),
            br(),
            tags$hr(),
            h4("The predicted next word:"),
            tags$span(style="color:darkred",
              tags$strong(tags$h3(textOutput("predictedWord")))),
            br(),
            tags$hr(),
            h4("Text entered so far:"),
            tags$em(tags$h4(textOutput("enteredText"))),
          align="center")
        ),
        column(3)
      )
    ),
    tabPanel("About", 
      fluidRow(
        column(2,p("")),
        column(8,includeMarkdown("./about/about.md")),
        column(2,p(""))
      )
    ),
    tags$hr(),
    tags$br()
  )
)
