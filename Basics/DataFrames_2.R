# Reading and Writing Data files
    # / or // can be used
setwd("//home//dev-r//Documents//R//Basics")

e_data <- read.csv("Employee_Data.csv")
e_data
# write.csv("Employee_Data.csv")
View(e_data)

is.data.frame(e_data) # Prints Boolean value
names(e_data) # Prints Header
ncol(e_data) # Prints number of columns
nrow(e_data) # Prints number of rows
head(e_data) # Prints first 6 data
tail(e_data) # Prints last 6 data 

# change col name
names(e_data)[2] <- "e_name";
names(e_data)

# finding max/min in data
min(e_data$emp_salary)
max(e_data$emp_salary)

# check dimention of data frame
dim(e_data)

# Retriving the subset from the data frame - subset
subset(e_data, emp_salary == max(emp_salary)) # Prints details of person with max salary
subset(e_data, emp_salary > 3000 & emp_id < 105)

# Install package :- "xlsx" for working with excel files
# load library
library(xlsx)

# package : "read"
# reading the text file: read_tsv()

# xml - install package: XML
    library(XML)
    library(methods)
        # result <- xmlParse(file = "input.xml")

# json files - install package : 'rjson'
    # read: fromJSON()
