library(shiny)

ui <- function(req) {
  # Serve the static HTML page
  htmlTemplate("www/index.html")
}

server <- function(input, output, session) {
  # Server logic (if needed)
}

shinyApp(ui, server)
