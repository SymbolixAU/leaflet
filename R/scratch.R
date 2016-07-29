# library(leaflet)
# library(shiny)
# library(shinydashboard)
#
# ui <- dashboardPage(
#   dashboardHeader(),
#   dashboardSidebar(),
#   dashboardBody(
#     radioButtons(inputId = "tiles", label = "tiles",
#                  choices = c("Esri.WorldGrayCanvas",
#                              "Thunderforest.Landscape")),
#     leafletOutput("leaf_map")
#   )
# )
#
#
# server <- function(input, output){
#
#   df <- data.frame(lat = c(-37.6, -37.9),
#                    lon = c(144.9, 145.1))
#
#   output$leaf_map <- renderLeaflet({
#     leaflet() %>%
#       addProviderTiles(input$tiles) %>%
#       addMarkers(data = df)
#   })
#
#   observe({
#
#     tiles <- input$tiles
#
#     leafletProxy("leaf_map") %>%
#       clearTiles() %>%
#       clearShapes() %>%
#       addProviderTiles(tiles)
#
#   })
# }
#
# shinyApp(ui, server)
#
#
#
#
#
#
#
#
