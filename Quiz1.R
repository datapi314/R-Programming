#Quiz Week 1 R Programming

# 1. Extract the subset of rows of the data frame where Ozone 
#values are above 31 and Temp values are above 90. What is the mean of Solar.R 
#in this subset?

q1 <- hw1_data[hw1_data$Ozone > 31 & hw1_data$Temp > 90, ]
summary(q1$Solar.R)

# 2. What is the mean of "Temp" when "Month" is equal to 6?
q2 <- hw1_data[hw1_data$Month == 6, ]
summary(q2$Temp)

#3. What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
q3 <- hw1_data[hw1_data$Month == 5, ]
summary(q3$Ozone)

#4 Subsetting missing values
ozone_bads <- hw1_data[is.na(hw1_data$Ozone), ]
dim(ozone_bads)  # row numbers = total NAs

#Removing NAs from the whole data frame
good <- hw1_data[complete.cases(hw1_data), ]

#or

clean <- complete.cases(hw1_data)
good <- hw1_data[clean, ]