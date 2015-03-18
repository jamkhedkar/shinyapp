library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Body Mass Index (BMI) calculator"),
    
    sidebarPanel(
      h4('Please enter weight in pounds and height in inches'),
      numericInput('weight','Weight in lbs',100,min=10,max=500,step=0.1),
   #   submitButton('submit'),
      numericInput('height','Height in inches',60,min=10,max=96,step=0.1),
      submitButton('submit')
    ),
    mainPanel(
      h3('BMI is:'),
      h4('You entered weight in pounds as'),
      verbatimTextOutput("inputWeight"),
      h4('You entered height in inches as'),
      verbatimTextOutput("inputHeight"),
      h4('Which resulted in a BMI of '),
      verbatimTextOutput("BMI"),
      h4("BMI range "),
      verbatimTextOutput("range")
    )
    
  )
  
)