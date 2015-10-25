library(shiny)

#setwd("D:/mideng/My Online Courses/Data Science 9 - Develop Data Products/Assignment")
convert <- function(degree = 0, ch = "2") {
  if (ch == "2") {
    return (degree * 9.0 / 5.0 + 32.0)
  } else {
    return ((degree - 32) * 5.0 / 9.0)
  }
}

shinyServer(
  function(input, output) { 
      output$oid1 <- renderText( {
        if ( input$id2 == "2") "Fahrenheit:"
        else "Celsius:"
      })
      output$oid2 <- renderText({ 
            convert(as.numeric(input$id1), input$id2) 
      })
  }
)
