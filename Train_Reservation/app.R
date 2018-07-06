
library(shiny)

# Define UI for application
ui <- fluidPage(
   
   # Application title
   titlePanel(h1("Train Reservation Form for Hamirpur and Lucknow Route")),
   
   # Sidebar with a slider input for input details 
   sidebarLayout(
      sidebarPanel(
        
        radioButtons("trainnumber", "Train Number: ", choices = c("12231", "12232", "15011", "15012"), selected = NULL),
        selectInput("station1", "Select the Source Station:", choices = c("Chandigarh", "Lucknow"), multiple = FALSE, selectize = T),
        selectInput("station2", "Select the Destination Station:", choices = c("Lucknow", "Chandigarh"), multiple = FALSE, selectize = T),
        textInput("station3", "Type the Boarding Station: ", value = NULL),
        br(),
        textInput("date", "Date of Journey: ", value = "DD/MM/YYYY"),
        selectInput("class", "Class: ", choices = c("Sleeper", "Third-AC", "Second-AC", "First-AC"), multiple = FALSE, selectize = T),
        selectInput("quota", "Quota: ", choices = c("General", "Ladies", "PWD"), multiple = FALSE, selectize = T),
      radioButtons("number", "Number of Passengers: ", choices = c("One", "Two", "Three", "Four", "Five (Max.)"), selected = "Five"),
      p(" Type Passenger Info in this format: "),
      
      p("Ex 1 - Saurabh Yadav, M"),
      p("Ex 2 - Shreya Singh, F"),
      textInput("psngr1", "Info Passenger 1: ", value = "Enter Full Name, Gender"),
      sliderInput("age1", "Select Age of Passenger 1: ", min = 0, max=110, value = 18, step = 1, animate=T),
      selectInput("berth1", "Berth Preference of Passenger 1: ", choices = c("Lower", "Middle", "Upper"), multiple = FALSE, selectize = T),
      
      textInput("psngr2", "Info of Passenger 2: ", value = "Enter Full Name, Gender"),
      sliderInput("age2", "Select Age of Passenger 2: ", min = 0, max=110, value = 18, step = 1, animate=T),
      selectInput("berth2", "Berth Preference of Passenger 2: ", choices = c("Lower", "Middle", "Upper"), multiple = FALSE, selectize = T),
      
      textInput("psngr3", "Info of Passenger 3: ", value = "Enter Full Name, Gender"),
      sliderInput("age3", "Select Age of Passenger 3: ", min = 0, max=110, value = 18, step = 1, animate=T),
      selectInput("berth3", "Berth Preference of Passenger 3: ", choices = c("Lower", "Middle", "Upper"), multiple = FALSE, selectize = T),
      
      textInput("psngr4", "Info of Passenger 4: ", value = "Enter Full Name, Gender"),
      sliderInput("age4", "Select Age of Passenger 4: ", min = 0, max=110, value = 18, step = 1, animate=T),
      selectInput("berth4", "Berth Preference of Passenger 4: ", choices = c("Lower", "Middle", "Upper"), multiple = FALSE, selectize = T),
      
      textInput("psngr5", "Info of Passenger 5: ", value = "Enter Full Name, Gender"),
      sliderInput("age5", "Select Age of Passenger 5: ", min = 0, max=110, value = 18, step = 1, animate=T),
      selectInput("berth5", "Berth Preference of Passenger 5: ", choices = c("Lower", "Middle", "Upper"), multiple = FALSE, selectize = T),
      
      p(h4("Children Below 5 Years (Ticket Is Not To Be Issued)")),
      textInput("psngr6", "Info of Child 1: ", value = "Enter Full Name, Gender"),
      sliderInput("age6", "Select Age of Child 1: ", min = 0, max=5, value = 2, step = 1, animate=T),
      
      textInput("psngr7", "Info of Child 2: ", value = "Enter Full Name, Gender"),
      sliderInput("age7", "Select Age of Child 2: ", min = 0, max=5, value = 2, step = 1, animate=T),
      
      br(),
      radioButtons("autoupgrad", "Consider for Auto Upgradation: ", choices = c("Yes", "No"), selected = NULL),
      radioButtons("accept", "Yes And I Accept the Terms & Conditions of the Travel Insurance Policy.", choices = c("Yes"), selected = "Yes"),
      br(),
      textInput("mob", "ISD-Mobile Number: ", value = "+91"),
      p("SMS will be sent to this number"),
      br(),
      radioButtons("payment", "Proceed To Payment ... ... ...", choices = c("Yes", "No"), selected = NULL)
      
      
   ),
      # Show a plot 
      mainPanel(
        
        textOutput("trainnumber"),
        textOutput("station1"),
        textOutput("station2"),
        textOutput("station3"),
        textOutput("date"),
        textOutput("class"),
        textOutput("quota"),
        textOutput("number"),
        textOutput("psngr1"),
        textOutput("slider1"),
        textOutput("berth1"),
        textOutput("psngr2"),
        textOutput("slider2"),
        textOutput("berth2"),
        textOutput("psngr3"),
        textOutput("slider3"),
        textOutput("berth3"),
        textOutput("psngr4"),
        textOutput("slider4"),
        textOutput("berth4"),
        textOutput("psngr5"),
        textOutput("slider5"),
        textOutput("berth5"),
        textOutput("psngr6"),
        textOutput("slider6"),
        textOutput("psngr7"),
        textOutput("slider7"),
        textOutput("autoupgrad"),
        textOutput("mob")
        
        
        
      )
   )
)

# Define server logic required 
server <- function(input, output) {
  output$station1=renderText(
    paste("Source Station is: ", input$station1))
  output$station2=renderText(
    paste("Destination Station is: ", input$station2))
  output$station3=renderText(
    paste("Boarding Station is: ", input$station3))
  output$trainnumber=renderText(
    paste("Selected Train is: ", input$trainnumber))
  output$date=renderText(
    paste("Date of Journey is: ", input$date))
  output$class=renderText(
    paste("Selected Class is: ", input$class))
  output$quota=renderText(
    paste("Quota: ", input$quota))
  output$number=renderText(
    paste("Number of Passengers: ", input$number))
  output$psngr1=renderText(
    paste("Info of Passenger 1 is: ", input$psngr1))
   output$slider1=renderText(
     paste("Age of Passenger 1 is: ", input$age1))
   output$berth1=renderText(
     paste("Berth Preference of Passenger 1 is: ", input$berth1))
   output$psngr2=renderText(
     paste("Info of Passenger 2 is: ", input$psngr2))
   output$slider2=renderText(
     paste("Age of Passenger 2 is: ", input$age2))
   output$berth2=renderText(
     paste("Berth Preference of Passenger 2 is: ", input$berth2))
   output$psngr3=renderText(
     paste("Info of Passenger 3 is: ", input$psngr3))
   output$slider3=renderText(
     paste("Age of Passenger 3 is: ", input$age3))
   output$berth3=renderText(
     paste("Berth Preference of Passenger 3 is: ", input$berth3))
   output$psngr4=renderText(
     paste("Info of Passenger 4 is: ", input$psngr4))
   output$slider4=renderText(
     paste("Age of Passenger 4 is: ", input$age4))
   output$berth4=renderText(
     paste("Berth Preference of Passenger 4 is: ", input$berth4))
   output$psngr5=renderText(
     paste("Info of Passenger 5 is: ", input$psngr5))
   output$slider5=renderText(
     paste("Age of Passenger 5 is: ", input$age5))
   output$berth5=renderText(
     paste("Berth Preference of Passenger 5 is: ", input$berth5))
   output$psngr6=renderText(
     paste("Info of Child 1  is: ", input$psngr6))
   output$slider6=renderText(
     paste("Age of Child 1 is: ", input$age6))
   output$psngr7=renderText(
     paste("Info of Child 2 is: ", input$psngr7))
   output$slider7=renderText(
     paste("Age of Child 2 is: ", input$age7))
   output$autoupgrad=renderText(
     paste("Consider for Auto Upgradation: ", input$autoupgrad))
   output$mob=renderText(
     paste("SMS will be sent to this number: ", input$mob))

}

# Run the application 
shinyApp(ui = ui, server = server)

