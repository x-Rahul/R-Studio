# Data Visualization : boxplot():
library(tidyverse)
view(mpg)
boxplot(mpg ~ cyl, data = mtcars, 
      xlab = "Number of Cylinders", ylab = "Miles per gallon",
      main = "Milege Data")

boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders", ylab = "Miles per gallon",
        main = "Milege Data",
        notch = TRUE,
        varwidth = TRUE,
        names = c("high", "medium", "low"),
        col = c("green", "yellow", "blue"))

ggplot(data = mpg, aes(class,hwy))+
    geom_boxplot()+
    coord_flip()
                
