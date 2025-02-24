library(shiny)
ui <- fluidPage(plotOutput("plot"))
server <- function(input, output) {
  output$plot <- renderPlot({ plot(mtcars$mpg, mtcars$wt) })
}
shinyApp(ui, server)
