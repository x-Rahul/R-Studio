# Data Visualization : Line Graph : plot()
library(tidyverse)
ds <- airquality[1:50,]
View(ds)

plot(ds$Temp, type = "o",col = rainbow(7),
     main = "Temperature chart")

plot(ds$Ozone, type = "o", col = "blue",
     xlab = "index Values",
     ylab = "ozone Values",
     main = "Ozone Chart") 
# some data missing 
# Adding another line chart
lines(ds$Temp, type = "o",col = rainbow(7))

ggplot(ds, aes(x = Temp, y = Wind))+
    geom_line(col = "blue", 
              size = 0.5, alpha = 0.9, linetype = 2)+
    ggtitle("Trend Chart")

#-------

x <- 0:10
y <- exp(-x/2)
z <- 0.1 * exp(x/3)

plot(x, y, type = "o", col = "red", lwd = 3,
     xlab = "x", ylab = "y", main = " Trend",
     )
lines(x, z, type = "o", col = "blue", lwd = 3)
legend(8, 0.8, c("Decrese","Increase"),lwd = 5, col = c("red", "blue"))


