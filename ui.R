library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Check the profitability of saving money!"),
  
  # Sidebar
  sidebarLayout(
    sidebarPanel(
      h3("Variables influencing the time to reach your goal"),
      
      # Input for salary
      h4("Salary [yearly]"),
      h5("what you earn through hard work"),
      numericInput("sal","How many $ do you earn?",
                   value=1000, min=0, max=1000000, step=0.5),
      
      # Input for expenses
      h4("Expenses [yearly]"),
      h5("what you spend for living"),
      numericInput("exp","How many $ do you use?",
                   value=999, min=0, max=1000000, step=0.5),
      
      # Slider for year increase
      h4("% gain [yearly]"),
      h5("expected increase of your portfolio"),
        sliderInput("perc", "expected gain/loss",
                    -100, 100, 0),
      
      # Input for years
      h4("Years"),
      h5("period of time you are willing to wait"),
      numericInput("year","For how long will you save/invest money?",
                   value=2, min=2, max=100, step=1),
      
      # Display lines
      h4("Display lines"),
      h5("Select what you want to see displayed in the plot"),
      checkboxInput("showearn","Salaries",value=FALSE),
      checkboxInput("showexpe","Expenses",value=FALSE),
      checkboxInput("showsave","Savings",value=FALSE),
      checkboxInput("showport","Portfolio",value=FALSE)
    ),
    
    # Main Panel
    mainPanel(
      h4("Total amount of $ you earned"),
      h5("... hard-worker ..."),
      textOutput("earn"),
      
      h4("Total amount of $ you spent"),
      h5("Life has its cost"),
      textOutput("expe"),

      h4("Total amount of $ you saved"),
      h5("To avoid betting pais off"),
      textOutput("save"),

      h4("Total amount of $ you will get"),
      h5("Impressive right?"),
      textOutput("port"),
      
      plotOutput("plot")
    )
  )
))
