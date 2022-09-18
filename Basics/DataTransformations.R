# install.packages("nycflights13")
# install.packages("ggplot2")
# install.packages("tidyverse")
library(nycflights13)
library(ggplot2)
library(tidyverse)

nycflights13::airlines
View(flights)

# Missing values NA
x = c(NA, 1,2,3,4,5)
y = c(6,7,8,9,10,11)
x+y # results: NA  8 10 12 14 16
is.na(x) # results: TRUE FALSE FALSE FALSE FALSE FALSE
is.na(y) #results: FALSE FALSE FALSE FALSE FALSE FALSE


# dplyr functions : filter, arrange, mutate, select, summarize

# filter:
filter(flights, month == 1, day == 1) # same as & operator
filter(flights, month == 1 & day == 1)

filter(flights, month == 1 | month == 2)

filter(flights, month == (1 | 2))
filter(flights, month == c(1 & 2))

# arrange:
arrange(flights, desc(dep_delay))

# select: specific rows and cols
select(flights, year, month, day)
select(flights, starts_with("dep")) # Selects only cols that starts with dep
            #   ends_with()
            #   contains("time")    # Prints cols that has keyword "time"

# mutate: adds new cols, default at the end
selected_flights <- select(flights, year:day, ends_with("delay"), distance, air_time)
print(selected_flights) 
mutate(selected_flights, gain = dep_delay-arr_delay, speed = distance/air_time) # Adds Two cols gain and speed
transmute(selected_flights, gain = dep_delay-arr_delay, speed = distance/air_time) # gives only new added cols
 
# summarise: 
summarise(flights, delay = mean(dep_delay, na.rm =TRUE)) # Calculate mean of the values present in the dataset : 12.6 which is avg delay
                                                         # na.rm : removes NA values

by_day <- group_by(flights, year, month, day)
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))