# Data Visualization
library("tidyverse")
population <- c(42561587, 54216584, 42168567, 23654156)
city_names <- c("Tokyo", "Delhi", "Shanghai", "Mexico City")

# pie(population, labels)
pie(
    population, 
    labels = city_names, 
    main = "Population Distribution", 
    col = rainbow(length(population)), 
    )
legend("topright", legend = city_names, cex = 0.8, fill = rainbow(length(population)))

# 3D pie chart - Library : "plotrix"
library("plotrix")
pie3D(
      population, 
      labels = city_names,
      explode = 0.1,
      main = "Population Distribution" 
      )
legend("topright", legend = city_names, cex = 0.8, fill = rainbow(length(population)))

# ggplot
library("ggplot2")
pop_data <- data.frame(
    population, city_names
)
pop_data
names(pop_data)

ggplot(pop_data, aes(city_names, population, group = 1))+
    geom_point(size = 5, color = "blue", alpha = 0.5)+
    geom_line(color = "red")
    

