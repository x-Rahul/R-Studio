# Arrays and Matrices

# Giving Names to the cols and rows (optional)
col.names <- c("col1", "col2", "col3")
row.names <- c("row1","row2", "row3")
matrix.names <- c("mat1", "Mat2")

# Creating Array
vec1 <- c(1,2,3)
vec2 <- c(4,5,6,7,8,9)

array( c(vec1, vec2), dim = c(3,3,2), dimnames = list(row.names, col.names, matrix.names)) # 3 rows, 3 cols, 2 arrays


