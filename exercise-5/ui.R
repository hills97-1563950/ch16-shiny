# ui.R
library(shiny)
library(plotly)
shinyUI(navbarPage(
  "Electoral College",
  tabPanel(
    "Map",
    titlePanel("Electoral College Votes"),
    sidebarLayout(

      sidebarPanel(

        selectInput(
          "mapvar",
          label = "Variable to Map",
          choices = list(
            "Population" = "population",
            "Electoral Votes" = "votes",
            "Votes / Population" = "ratio"
          )
        )
      ),

      mainPanel(
        plotlyOutput("map")
      )
    )
  )

))