#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(bslib)

# Define UI for application that draws a histogram
page_two <- page_fluid(

  # Título do aplicativo
  titlePanel("Explorador de Dados de Candidatos"),
  
  # Input para seleção do arquivo
  fileInput("file1", "Escolha um arquivo Excel",
            multiple = FALSE,
            accept = c(".xlsx")),
  
  # Saída para mostrar os dados
  tableOutput("contents")
)

ui <- page_navbar(
  id = "page",
  title = "My App",
  bg = "#2D89C8",
  inverse = TRUE,
  nav_panel(title = "One", p("First page content.")),
  nav_panel(title = "Two", page_two),
  nav_panel(title = "Three", p("Third page content.")),
  nav_spacer()
)
