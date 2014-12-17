shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Height Prediction"),
    sidebarPanel(
      sliderInput('height', 'Father Height (inches)',value = 60, min = 50, max = 90, step = 1,),
      sliderInput('height2', 'Mother Height (inches)',value = 60, min = 50, max = 90, step = 1,)
    ),
    mainPanel(
      h3('Predicted Height'),
      h4('You entered Father Height'),
      verbatimTextOutput("inputValue"),
      h4('You entered Mother Height'),
      verbatimTextOutput("inputValue2"),
      h4('Prediction with 95% Confindence Interval'),
      verbatimTextOutput("prediction")
    )
  ))
