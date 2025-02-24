library(plotly)
p <- ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point()
ggplotly(p)

