# COMPULSORY TASK



# COMPULSORY LEARNING TASKS
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
#install.packages("ggplot2")
#library(ggplot2)

# to find a toy data set
# data(package = "ggplot2")
ver <- 1:20 
hor <- x^2

datas <- data.frame(x,y)
print(datas)
qplot(data = datas, x = ver, y = hor, geom = "point")

# Task 4
scores = c(50, 75, 85, 60, 43)
barplot(scores,
        main = "Bar Plot of five subjects",
        xlab = "Score",
        ylab = "Subject",
        names.arg = c("Biology", "English", "Chemistry", "Mathematics", "Physics"),
        col = "blue",
        horiz = FALSE)

# Task 5
username <- readline("Enter your name: ")
age <-  readline("Enter your age: ")
print(paste("Hello, ",username))
print(paste("Your age is ",age))

# Task 6
seq <- 20:50
average <- mean(seq)
total <- sum(seq)
print(total)

# Task 7
rn = c(sample(-50:50, 10))
print(rn)

# ==============================================================================
# OPTIONAL CHALLENGE
# Task 1: Write a R program to get the first 10 fibonacci numbers.
i <- 0
j <- 1
num <- 2
fibo <- c(i,j)
while (num < 10){
  nextNum <- i+j
  i <- j
  j <- nextNum
  fibo <- append(fibo, nextNum)
  num <-num+1
}
print("10 Fibonacci Numbers")
print(fibo)

# Task 2
numbers <- 1:100
for (num in numbers){
  if(num%%3==0 && num%%5==0){
    print(paste(num,"FizzBuzz"))
  }
  else if(num%%3==0){
    print(paste(num,"Fizz"))
  }
  else if(num%%5==0){
    print(paste(num,"Buzz"))
  }
  else{
    print(num)
  }
}

# ----------------Thank you---------------