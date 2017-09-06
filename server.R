library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  total <- reactiveValues()
  observe({
    
    total$earn[1] <- input$sal
    total$expe[1] <- input$exp
    total$save[1] <- input$sal - input$exp
    total$port[1] <- total$save[1] * (1 + input$perc/100)
    total$year[1] <- 1
    
    for (i in 2:input$year){
      total$year[i] <- i
      total$earn[i] <- total$earn[i-1] + input$sal
      total$expe[i] <- total$expe[i-1] + input$exp
      total$save[i] <- total$save[i-1] + input$sal - input$exp
      total$port[i] <- (total$port[i-1] + input$sal - input$exp) * (1 + input$perc/100)
    }
    
  })
  
  output$earn = renderText({total$earn[input$year]})
  output$expe = renderText({total$expe[input$year]})
  output$save = renderText({total$save[input$year]})
  output$port = renderText({total$port[input$year]})
  
  output$plot <- renderPlot({
    
    plot(total$earn, total$year, xlab = "Year", ylab = "$",
         xlim = c(1,total$year[input$year]),
         ylim = c(0,total$earn[input$year]+20))
    
    # salaries line
    if(input$showearn){
      lines(total$earn, col="blue", lwd=2)
    }
    # expenses line
    if(input$showexpe){
      lines(total$expe, col="red", lwd=2)
    }
    # savings line
    if(input$showsave){
      lines(total$save, col="grey", lwd=2)
    }
    # portfolio line
    if(input$showport){
      lines(total$port, col="green", lwd=2)
    }
  })
  
})
