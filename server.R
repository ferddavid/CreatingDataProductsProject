library(UsingR)
data(galton)
lmgalton <- lm(galton$child~., data = galton)
heightpredict <- function(height,height2) 
  predict(lmgalton, data.frame(parent=(height+(1.08*height2))/2), interval = "predict")
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$height})
    output$inputValue2 <- renderPrint({input$height2})
    output$prediction <- renderPrint({heightpredict(input$height,input$height2)})
  }
)  