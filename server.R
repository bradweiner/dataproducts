#server.R file

data<-read.csv("ipeds.csv")
shinyServer(function(input, output) {
        
        #build new data frame
        selectedData <- reactive({
                data[, c(input$xcol, input$ycol)]
        
         
        })
        
           
        output$plot1 <- renderPlot({
                par(mar = c(5.5, 5.5, 0, 1))
                plot(input$ycol~input$xcol,xlim=c(1,36),ylim=c(0,100),xlab = input$xcol,
                     ylab=input$ycol)
                points(selectedData())
                                                       
        })
        
})