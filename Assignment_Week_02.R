# Ethan R Feldman

# 1.
Feedback = c(3,4,5,3,2,3,2,1,4,5,3,2,3,4,5,2,1,3,4,5,1,2,3,2,3,4,1,4,5,2,3)
Feedback
mode(Feedback)
Feedback[10]

# 2.
myMatrix = matrix(data=c(7,-7,7,7,-7,7,7,-7,7), nrow = 3, ncol = 3, byrow = TRUE, dimnames = list(c("row 1", "row 2", "row 3"), c("col 1", "col 2", "col 3")))
myMatrix
myMatrix[,2:3]
myMatrix[3:2,]
diag(myMatrix)
myMatrix[-2,]
myMatrix[2,] = c(1,2,3)
myMatrix

# 3. 
myArray = array(dim = c(3,3,2), dimnames = list(c("ROW1", "ROW2", "ROW3"), c("COL1", "COL2", "COL3"), c("Matrix1", "Matrix2")))
myArray[1,,] = c(5,10,13)
myArray[2,,] = c(9,11,14)
myArray[3,,] = c(3,12,15)
myArray
myArray[2,,2]
myArray[1,,]
myArray[2,c(3,1),2]
