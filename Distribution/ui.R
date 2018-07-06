#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
shinyServer(
  pageWithSidebar( 
    headerPanel("Overview of Normal & Exponential Distribution"),
    sidebarPanel(
      selectInput("Distribution", "Please Select Distribution Type",
                  choices =c("Normal", "Exponential")),
      sliderInput("sampleSize", "Please Select Sample Size :", min=100, 
                  max= 5000, value = 1000, step = 100),
      conditionalPanel(condition = "input.Distribution == 'Normal'", 
                       textInput("mean", "Please Select Mean :", value = 10),
                       textInput("sd", "Please Select Standard Deviation :", 3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'", 
                       textInput("lambda", "Please Select Exponential Lambda :", 1))
    ),
    mainPanel(
      plotOutput("myPlot")
  )
)
)