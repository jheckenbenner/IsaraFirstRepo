

library(shiny)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$depotPlot <- renderPlot({
    
    # Render a barplot
    barplot(tableau[,input$date], 
            main=input$date,
            ylab="Nombre",
            xlab="Type de dépôt")
  })
}