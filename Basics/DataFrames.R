# Tables- data frame and Data structures
    # data frame
    # syntax: varname <- data.frame(values)

emp.data <- data.frame(
    emp_id = c(101:105),
    emp_names = c("Rahul", "Hitesh", "Sri Hari", "Prakhar", "Devesh"),
    emp_salary = c(1000, 10000, 5000, 3000, 4000 ),
    stringsAsFactors = FALSE
)

print(emp.data)
print(summary(emp.data))
    
# structure
print(str(emp.data))  

# Extract specific col values
data.frame(emp.data$emp_names, emp.data$emp_salary)
emp.data[c(2,3)]
emp.data[c(2,3), c(2,2)]

# Adding a new col
emp.data$JoinDate <- as.Date(c("3-11-2020", "3-11-2020", "3-11-2020", "3-11-2020", "3-11-2020"))
Employee_Data <- emp.data

# Export data frame
Employee_Data
write.csv(Employee_Data,"//home//dev-r//Documents//R//Basics//Employee_Data.csv", row.names = FALSE)
