fluidPage(
  # Application title
  titlePanel("Mot nuage"),
  
  sidebarLayout(
    # Sidebar with a slider and selection inputs
    sidebarPanel(
      selectInput("selection", "Choisir un livre:",
                  choices = books),
      actionButton("update", "Changez"),
      hr(),
      sliderInput("freq",
                  "la frequence minimuale:",
                  min = 1,  max = 50, value = 15),
      sliderInput("max",
                  "numbre maximale des mots:",
                  min = 1,  max = 300,  value = 100)
    ),
    
    # Show Word Cloud
    mainPanel(
      plotOutput("plot")
    )
  )
)