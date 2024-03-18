# Brian
# Read csv file and transform
# Draw bar chart

library(dplyr)

accidents <- read.csv('Accidents.csv')
accidents %>% pivot_longer(cols=c('Death','Injured'),
                           names_to ='Type',
                           values_to ='Count')
