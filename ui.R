library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Converting Temperature between Fahrenheit and Celsius"),
  sidebarPanel(
    numericInput('id1', 'Enter a temperature degree to convert', 0, min = -50, max = 100, step = 1),
    radioButtons('id2', '', c("From Fahrenheit" = "1", "From Celsius" = "2"), "2")
#    actionButton("goButton", "Convert") 
  ),
  mainPanel(
        h4(textOutput("oid1")),
        textOutput("oid2")
  )
))
