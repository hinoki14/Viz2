# Week 2: Interactive Data Visualization with Plotly

#
# 1 Install and load required packages
#
install.packages("plotly")  # Install plotly (if not installed)
library(plotly)             # Load plotly

#
# 2 Load sample dataset
#
data(mtcars)  # Load mtcars dataset
head(mtcars)  # View first few rows

#
# 3 Basic Interactive Scatter Plot
#
plot_ly(data = mtcars, x = ~mpg, y = ~wt, type = 'scatter', mode = 'markers')

#
# 4 Customizing Scatter Plot
#
plot_ly(data = mtcars, x = ~mpg, y = ~wt, 
        type = 'scatter', mode = 'markers',
        marker = list(size = 10, color = 'blue')) %>%
  layout(title = "Miles Per Gallon vs. Weight",
         xaxis = list(title = "MPG"),
         yaxis = list(title = "Weight"))

#
# 5 Interactive Bar Chart
#
plot_ly(mtcars, x = ~factor(cyl), y = ~table(mtcars$cyl), type = "bar")

#
# 6 Customizing Bar Chart Colors
#
plot_ly(mtcars, x = ~factor(cyl), y = ~tapply(mtcars$mpg, mtcars$cyl, mean), type = "bar", 
        marker = list(color = 'orange')) %>%
  layout(title = "Average MPG by Cylinder",
         xaxis = list(title = "Cylinders"),
         yaxis = list(title = "Miles Per Gallon"))

#
# 7 Interactive Line Chart (Unemployment Trends)
#
data(economics)
plot_ly(economics, x = ~date, y = ~unemploy, type = 'scatter', mode = 'lines') %>%
  layout(title = "US Unemployment Trends",
         xaxis = list(title = "Year"),
         yaxis = list(title = "Unemployment"))

#
# 8 Adding Multiple Lines to a Line Chart
#
plot_ly(economics, x = ~date, y = ~unemploy, type = 'scatter', mode = 'lines', name = "Unemployment") %>%
  add_trace(x = ~economics$date, y = ~economics$pce, name = "Personal Consumption") %>%
  layout(title = "Unemployment vs. Consumption",
         xaxis = list(title = "Year"),
         yaxis = list(title = "Value"))

#
# 9 Interactive Histogram
#
plot_ly(mtcars, x = ~mpg, type = "histogram") %>%
  layout(title = "Distribution of MPG")

#
# 10 Boxplot for Distribution Comparison
#
plot_ly(mtcars, y = ~mpg, color = ~factor(cyl), type = "box") %>%
  layout(title = "MPG Distribution by Cylinder")

