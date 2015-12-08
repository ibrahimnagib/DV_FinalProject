#ui.R

require(shiny)
require(shinydashboard)
require(leaflet)

dashboardPage(
  dashboardHeader(
  ),
  dashboardSidebar(
    sidebarMenu(
      menuItem("CrossTab", tabName = "CrossTab", icon = icon("th")),
      menuItem("BarGraph", tabName = "BarGraph", icon = icon("th")),
      menuItem("BoxPlot", tabName = "BoxPlot", icon = icon("th")),
      menuItem("Histogram", tabName = "Histogram", icon = icon("th")),
      menuItem("ScatterPlot", tabName = "ScatterPlot2", icon = icon("th"))
    )
  ),
  dashboardBody(
    tabItems(
      # Second tab content
      tabItem(tabName = "CrossTab",
              actionButton(inputId = "light", label = "Light"),
              actionButton(inputId = "dark", label = "Dark"),
              sliderInput("Efficient", "Rated_Horsepower_Mid_value:", 
                          min = 1, max = 150,  value = 90),
              textInput(inputId = "title2", 
                        label = "Crosstab Title",
                        value = "Rated Horse Power"),
              actionButton(inputId = "clicks2",  label = "Click me"),
              plotOutput("distPlot2")
      ),
      
      # Third tab content
      tabItem(tabName = "BarGraph",
              actionButton(inputId = "clicks3",  label = "Click me"),
              plotOutput("distPlot3")
      ),
      
      tabItem(tabName = "BoxPlot",
              actionButton(inputId = "clicks4",  label = "Click me"),
              plotOutput("distPlot4")
      ),
      tabItem(tabName = "Histogram",
              actionButton(inputId = "clicks5",  label = "Click me"),
              plotOutput("distPlot5")
      
      ),
      tabItem(tabName = "ScatterPlot2",
              sliderInput("KPI1", "Rated Horsepower Value:", 
                          min = 1, max = 800,  value = 800),
              actionButton(inputId = "clicks6",  label = "Click me"),
              plotOutput("distPlot6")
              
      )
    )
  )
)
