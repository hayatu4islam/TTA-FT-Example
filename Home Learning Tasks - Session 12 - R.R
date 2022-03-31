
first <- c(1,3,5,7,9)
second <- c(2,4,6,8,10)
third <- c(2,3,5,7,11)
# Combining the three vectors to become 3x5 matrix
merged <- c(first, second, third)
matrics <- matrix(merged,3,5,TRUE)

# printing the content of the matrix
print(matrics)

# Plot a graph and label
plot(merged, type ="o", col="red", pch=14)

# Task 2
name <- c("Adam","Bob","Charles","David","Elijah")
age <- c(23,45,12,32,28)
role <- c("Manager","Accountant","Clerk","Receptionist","Secretary")
service_length <- c(15,10,12,9,4)
employee <- data.frame(name,age,role,service_length)
print(employee)

# Task 3
install.packages("ggplot2")
library(ggplot2)

# to find a toy data set
# data(package = "ggplot2")
x <- 1:20 
y <- x^2
print(x)
print(y)


qplot(x, y, geom = "point", color = class)

