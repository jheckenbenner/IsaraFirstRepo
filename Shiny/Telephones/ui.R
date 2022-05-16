library(shiny)
library(datasets)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Telephones by region"),

    # Sidebar 
    sidebarLayout(
      
      # Define the sidebar with one input   
      sidebarPanel(
            selectInput("region", "Region:",
                       choices=colnames(WorldPhones)),
      ), 

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("phonePlot")
        )
    )
)
