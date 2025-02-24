df <- read.csv("Accidents.csv") 

plot_ly = plot_ly(data = df, x = ~Year, y = ~Death) 

plot_ly = plot_ly(data = df, x = ~Year, y = ~Injured) 

plot_ly = plot_ly(data = df, x = ~Year, 
                  y = ~Injured, 
                  type = "scatter", 
                  mode = 'lines') 

plot_ly = plot_ly(data = df, x = ~Year, 
                  y = ~Death, 
                  type = "scatter", 
                  mode = 'lines') 

plot_ly


