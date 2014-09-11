#ui.R file 

library(shiny)
data<-read.csv("ipeds.csv")
shinyUI(pageWithSidebar(
        headerPanel('Graduation Rates and ACT Averages'),
        sidebarPanel(
                h5('Select the Average 25th or 75th Percentile for ACT Scores'),
                selectInput('xcol', 'X Axis', names(data)[8:9]),
                h5('Select either the 4,5, or 6 year graduation rate'),
                selectInput('ycol', 'Y Axis', names(data)[4:6]),
                
                            selected=names(data)
                            #selected=names(data)[[2]]),
                
        ),
        mainPanel(
                plotOutput('plot1'),
                h5('This tool demonstrates the relationship between Composite ACT scores and college 
                graduation rates among four, five, and six year cohorts ending during the 2011 academic year.'),
                h5('Points represent universities with high research activity in the United States'),
                h5('Data from Integrated Post-secondary Education Data System (IPEDS)')
                        
                )
        
))