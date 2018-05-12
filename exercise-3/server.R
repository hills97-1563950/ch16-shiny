library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  output$scatter <- renderPlot({
    x <- mpg[[input$x_var]]
    y <- mpg[[input$y_var]]
    
    title <- paste0("MPG Dataset: ", input$x_var, " v.s.", input$y_var)
    
    p <- ggplot() +
      geom_point(mapping = aes(x = x, y = y), 
                 size = input$size, 
                 color = input$color) +
      labs(x = input$x_var, y = input$y_var, title = title)
    p
  })
})