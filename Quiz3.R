#Quiz Week 3

#Q1

library(datasets)
data("iris")
# Subsetting virginica species
virgi <- iris[iris$Species =="virginica", ]


# Calculate the mean
sapply(virgi, mean, na.rm = T)


#Other way 1
virgi <- iris[iris$Species =="virginica", ]$Sepal.Length
mean(virgi)


#Other way 2
s <- split(iris, iris$Species)
sapply(s, function(x) colMeans(x["Sepal.Length"], na.rm = T))

#other way 3
s <- subset(iris, Species == "virginica")$Sepal.Length
mean(s[!is.na(s)])

#Q2
head(iris)   # columns 1:4
apply(iris[ , 1:4], MARGIN = 2, mean)

#Q3
library(datasets)
data("mtcars")
?mtcars

## How can one calculate the average miles per gallon (mpg) 
## by number of cylinders (cyl) in the car? 

#Option 1
tapply(mtcars$mpg, mtcars$cyl, mean)

#Option 2
sapply(split(mtcars$mpg, mtcars$cyl), mean)

#Q4 what is the absolute difference between the average horsepower 
#of 4-cylinder cars and the average horsepower of 8-cylinder cars?

# Calculate the mean of horsepower by cylinder
hp_average <- tapply(mtcars$hp, mtcars$cyl, mean)
print(hp_average)

#Absolute difference subsetting the elements 4 and 8 (cylinders)
abs(hp_average["4"] - hp_average["8"])