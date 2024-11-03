#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(readxl)

# Define server logic required to draw a histogram
function(input, output, session) {
  
  # Ler o arquivo Excel e criar um data frame reativo
  data <- reactive({
    req(input$file1)
    read_excel(input$file1$datapath)
  })
  
  # Mostrar os dados na tabela
  output$contents <- renderTable(
    {data()},
    digits = 0
  )

}
