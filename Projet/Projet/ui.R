

library(shiny)

fluidPage(    
  
  # Give the page a title
  titlePanel("Dépôts par dates"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("date", "Date:", 
                  choices=colnames(date)),
      
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("depotPlot")  
    )
    
  )
)