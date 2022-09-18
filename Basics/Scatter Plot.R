# Data Visualization : scatter plots

library(ggplot2)
view(mpg)
?mpg

plot1 = plot(mpg$displ, mpg$cty,
             col = "purple", 
             pch = 18, 
             main = "Trend", 
             xlab = "Engine Displacement",
             ylab = "city per gallon",
             frame = FALSE) # pch: plotting 'character' - different symbols

# Trendline
lines(lowess(mpg$displ, mpg$cty), col = "orange", lwd = 4)

plot2 = ggplot(mpg, aes(displ, hwy, color = class, group = 1))+ # Here instead of color we can use: size, alpha
    geom_point()
plot2
