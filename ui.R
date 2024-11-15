library(shiny)
library(rmarkdown)
library(markdown)
library(shinydashboard)
# setwd("C:/RSTUDIO/Latihan/PracticalDS/ShinyApp_Reproducible_Project")
rmdfile <- c("About.Rmd")

# Define UI for application that draws a histogram
fluidPage(
    # Application title
    titlePanel("Normal Distibution Density Plot Generator with Customisable Mean, Standar Deviation and Number of Samples"),
    # Sidebar with a slider input for number of bins
    tabsetPanel(
      tabPanel("Main Page",
    sidebarLayout(
        sidebarPanel(
          helpText("Please select value wisely so you can see proper plot"),
          numericInput("randnum", "Please fill Number of Samples? Select > 1",
                       value = 10),
          numericInput("mean", "Please fill Mean",
                       value = 1),
          numericInput("sd", "Please fill Stdandar Deviation",
                       value = 2),
          sliderInput("xslider","Select X-axis Zoom with default value -100 to 100",
                        min = -100,max = 100,value = c(-10,10)),
          submitButton("Submit to Plot")
        ),
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("plot1")
        )
    )
), tabPanel("Documentation/About",
           mainPanel(
             includeMarkdown("About.Rmd")
           ))
)
)
