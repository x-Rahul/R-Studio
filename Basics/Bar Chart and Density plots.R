# Advance plots in R
# Density Plots
library(ggplot2)
library(hrbrthemes)
library(tidyr)

datasets:: Orange
View(Orange)

ggplot(Orange, aes(x = circumference, group = Tree, fill = Tree))+
    geom_density(adjust = 1.5)
       
# Bar Charts
Score <- c(58,96,65,85,72,55,68)
Days <- c("Mon", "Tue", "Wed", "Thru", "Fri", "Sat", "Sun")

barplot(Score, names.arg =  Days, 
        xlab = "Day", ylab = "Score",
        main = "Scorecard",
        col = "red")

# Grouped Bar Chart
ds <- diamonds[1:50,]
p1 = ggplot(ds)+
    geom_bar(aes(x = cut, fill = clarity), position = "dodge")

# Stacked bar Plot
ggplot(ds)+
    geom_bar(aes(cut,carat, fill = clarity, position = "stack", stat = identity
                 
p2 = ggplot(ds,aes(x = cut, y = carat, fill = clarity))+
    geom_bar(position = "stack", stat = "identity")+
    ggtitle("Diamonds")+
    theme_bw()
p2
  

