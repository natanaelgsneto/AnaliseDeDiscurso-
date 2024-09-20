install.packages("ggplot2")
install.packages("fmsb")
library(ggplot2)
library(fmsb)
movies <- data.frame(
  movie = c("The Godfather", "The Matrix", "The Avengers", "The Lion King", "The Shining", "The Notebook"),
  plot = c(5, 4, 3, 4, 4, 3),
  acting = c(5, 4, 4, 3, 4, 4),
  cinematography = c(5, 5, 4, 3, 5, 3),
  music = c(4, 4, 4, 5, 3, 4),
  genre = c(5, 4, 3, 4, 4, 4)
)    
library(tidyr)
movies_long <- pivot_longer(movies, cols = -movie, names_to = "criteria", values_to = "rating")        
ggplot(movies_long, aes(x = criteria, y = rating, group = movie, color = movie)) +
  geom_polygon(alpha = 0.4) +
  coord_polar() +
  theme_minimal() +
  labs(title = "Movie ratings on a radar chart")        



library(fmsb)

# Colores de las áreas
areas <- c(rgb(1, 0, 0, 0.25),
           rgb(0, 1, 0, 0.25),
           rgb(0, 0, 1, 0.25))

radarchart(df2,
           cglty = 1,       # Tipo de línea del grid
           cglcol = "gray", # Color líneas grid
           pcol = 2:4,      # Color para cada línea
           plwd = 2,        # Ancho para cada línea
           plty = 1,        # Tipos de línea
           pfcol = areas)   # Color de las áreas


set.seed(1)  #para que sea reproducible 

df.rad = expand.grid(letters[1:5], 1:2)
df.rad$score = runif(nrow(df.rad))
head(df.rad)



library(tidyverse)
library(viridis)
library(patchwork)
library(hrbrthemes)
library(fmsb)
library(colormap)

# Create data
set.seed(1)
data <- as.data.frame(matrix( sample( 2:20 , 10 , replace=T) , ncol=10))
colnames(data) <- c("math" , "english" , "biology" , "music" , "R-coding", "data-viz" , "french" , "physic", "statistic", "sport" )

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data <- rbind(rep(20,10) , rep(0,10) , data)

# Custom the radarChart !
par(mar=c(0,0,0,0))
radarchart( data, axistype=1, 
            
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 , 
            
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.8,
            
            #custom labels
            vlcex=0.8 
)


library(fmsb)

# Create data: note in High school for several students
set.seed(99)
data <- as.data.frame(matrix( sample( 0:20 , 15 , replace=F) , ncol=5))
colnames(data) <- c("math" , "english" , "biology" , "music" , "R-coding" )
rownames(data) <- paste("mister" , letters[1:3] , sep="-")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each variable to show on the plot!
data <- rbind(rep(20,5) , rep(0,5) , data)

# plot with default options:
radarchart(data)




library(fmsb)

# Create data: note in High school for several students
set.seed(99)
data <- as.data.frame(matrix( sample( 0:20 , 15 , replace=F) , ncol=5))
colnames(data) <- c("math" , "english" , "biology" , "music" , "R-coding" )
rownames(data) <- paste("mister" , letters[1:3] , sep="-")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each variable to show on the plot!
data <- rbind(rep(20,5) , rep(0,5) , data)

# Color vector
colors_border=c( rgb(0.2,0.5,0.5,0.9), rgb(0.8,0.2,0.5,0.9) , rgb(0.7,0.5,0.1,0.9) )
colors_in=c( rgb(0.2,0.5,0.5,0.4), rgb(0.8,0.2,0.5,0.4) , rgb(0.7,0.5,0.1,0.4) )

# plot with default options:
radarchart( data  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.8,
            #custom labels
            vlcex=0.8 
)

# Add a legend
legend(x=0.7, y=1, legend = rownames(data[-c(1,2),]), bty = "n", pch=20 , col=colors_in , text.col = "grey", cex=1.2, pt.cex=3)




library(fmsb)

# Create data: note in High school for several students
set.seed(99)
data <- as.data.frame(matrix( sample( 0:20 , 15 , replace=F) , ncol=5))
colnames(data) <- c("math" , "english" , "biology" , "music" , "R-coding" )
rownames(data) <- paste("mister" , letters[1:3] , sep="-")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each variable to show on the plot!
data <- rbind(rep(20,5) , rep(0,5) , data)







install.packages("plotly")

library(plotly)

fig <- plot_ly(
  type = 'scatterpolar',
  fill = 'toself'
) 
fig <- fig %>%
  add_trace(
    r = c(14),
    theta = c('Dancas'),
    name = 'Dancas'
  ) 
fig <- fig %>%
  add_trace(
    r = c(1.5, 10, 39, 31, 15, 1.5),
    theta = c('A','B','C', 'D', 'E', 'A'),
    name = 'Literatura'
  ) 
fig <- fig %>%
  layout(
    polar = list(
      radialaxis = list(
        visible = T,
        range = c(0,50)
      )
    )
  )

fig
#https://www.datanovia.com/en/blog/beautiful-radar-chart-in-r-using-fmsb-and-ggplot-packages/