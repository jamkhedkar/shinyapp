library(shiny)
BMICalculator <- function(weight,height) {
  weight*703/height^2
}
BMIRange <- function(BMI){
  if(BMI < 18.5){
    r <- 'underweight'}
  
  else if ((BMI >= 18.5)& (BMI < 24.9)){
    r <- 'normal'}
  
  else if((BMI >= 24.9) & (BMI < 29.9)){
    r <- 'overweight'}
  
  else{
    r <- 'obese'}
  
  r
  
}
shinyServer(
 
  function(input,output){
       output$inputWeight <- renderPrint({input$weight})
       output$inputHeight <- renderPrint({input$height})
       output$BMI <- renderPrint({BMICalculator(input$weight,input$height)})
      # BMI <- BMICalculator(input$weight,input$height)
       #print(BMIRange(BMI))
       output$range <- renderPrint({BMIRange(BMICalculator(input$weight,input$height))})
       
   
  }
)