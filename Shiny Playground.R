library(shiny)
library(rsconnect)
rsconnect::setAccountInfo(name='navid-mohseni', token='9315F5FEA17AC3B3F1E1E4BFC1C6DCCC', secret='cJStBhnH9E6abgHYa9arIylmzrHxDnrTsoYOPtWe')
rsconnect::deployApp('')
install.packages(c("openintro", "shinycssloaders", 
  "shinyFeedback", "shinythemes", "thematic", "vroom", 
  "waiter", "zeallot"))


#First try
ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a Number",
              value = 25, min = 1, max = 100),
  plotOutput("hist")
)

server <- function(input, output){
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
}

shinyApp(ui = ui, server = server)

