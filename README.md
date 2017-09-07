# Shiny app simulating possible savings

For a direct access to Porfolio Shiny application, click [here](http://matthcret.shinyapps.io/portfolioshinyapp/).

This README supports the Shiny application. It includes three parts:

* Instructions given for this project
* Description of this Shiny application
* Directives on how to visualize this Shiny application

### 1. Instructions given for this project

Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
Deploy the application on Rstudio's shiny server.
Share the application link by pasting it into the text box below.
Share your server.R and ui.R code on github.
The application must include the following:

  +Some form of input (widget: textbox, radio button, checkbox, ...).
  +Some operation on the ui input in sever.R.
  +Some reactive output displayed as a result of server calculations.
  +You must also include enough documentation so that a novice user could use your application.
  +The documentation should be at the Shiny website itself. Do not post to an external link.
  
The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.

### 2. Description of this Shiny application

This Shiny application ('MyShinyApp') acquires input values from the user to calculate the profitability of its savings. My motivation to work on this app was a visit to a bank office, where I was told I did not have the down payment to get a mortgage. Hence I wondered how much I could save and earn through a portfolio in a 5 years period. The inputs I chose are constant over time: yearly salary, yearly expenses, years and percentage of gain/loss of the portfolio. Try the app and you can see how much time you need to wait in order to get enough money to apply for a mortgage.

MyShinyApp contains 1 slider controlling the gain/loss percentage (input$perc) and three numerical input (input$sal, input$exp, input$year). Simple arithmetic is used in order to perform the calculations and later depic the result in the graph.

### 3. Directives on how to visualize this Shiny application

Option 1: Direct link: click [here](http://matthcret.shinyapps.io/portfolioshinyapp/).

Option 2: Download the `server.R` and `ui.R` files and place them in a directory named 'MyShinyApp'. Open an R session and set the working directory to the folder that contains the directory 'MyShinyApp'. Then run the following commands:

```
library(shiny)
runApp('MyShinyApp')
```

