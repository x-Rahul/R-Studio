# Creating List
List<- list( c(1,23,5), "APPLE", 'bus', 45.9 )
print(List)

# multiple List
list_data <- list ( c("A", "b", "C"), matrix( c(3,9,5,1,-8,9), nrow = 3), list("Green", 13.6, 45))
print(list_data)
# Naming the List
names(list_data)<-c("vector", "Matrix", "Inner List")
print(list_data)

#Accessing the elemets
print(list_data[1]) #by index
print(list_data$Matrix) # by Variable Name

# Merging Lists
list1 <- list(1,2,3)
list2 <- list("4A","5","6C")
MergedList<-merged.List <- c(list1, list2)
print(MergedList)

# Unlist the List
list_1 <- list(1:5)
print(list_1)
print(unlist(list_1))
print(unlist(MergedList))
