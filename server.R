function(input, output) {
    output$plot1 <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- rnorm(input$randnum,input$mean,input$sd)
        xd <- density(x)
        plot(xd,xlim = c(input$xslider[1],input$xslider[2]),
             main = "Density Chart",
             xlab = "Value",ylab = "Density",
             col = "blue",lwd = 4)
    })
}