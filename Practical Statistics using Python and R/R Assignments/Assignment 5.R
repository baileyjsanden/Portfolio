#Create Data Table

Data=data.table(
  pretest=c(56,79,68,59,64,74,73,47,78,61,68,64,53,71,61,57,49,71,61,58,58),
  midterm=c(64,91,77,69,77,88,85,64,98,77,86,77,67,85,79,77,65,93,83,75,74),
  final=c(69,89,81,71,75,86,86,69,100,85,93,87,76,95,97,89,83,100,94,92,92),
  instruct=c(1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,3,3,3),
  required=c(0,0,0,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1)
)
#Question 1: Summary statistics

Summary_DataSet<- summary(Data)
print(Summary_DataSet)


# Question 2 mean and median of midterm
mean_midterm<- mean(Data$midterm)
print(mean_midterm)

median_midterm<- median(Data$midterm)
print(median_midterm)

# Question 3 mean and median of final 
mean_final<- mean(Data$final)
print(mean_final)

median_final <- median(Data$final)
print(median_final)

# Question 4 mean and median of pretest
mean_pretest<- mean(Data$pretest)
print(mean_pretest)
median_pretest<- median(Data$pretest)
print(median_pretest)

# Question 5 st dev. of final
st_dev_final <- sd (Data$final)
print (st_dev_final)

# Question 6 histogram of final
hist_final <- hist(Data$final)

# Question 7 boxplot of final
box_final <- boxplot(Data$final)

#question 8 : did you see any outliers in the final grade 

#per the boxplot and a standard deviation of only 9.6 I did not see any outliers in the final grades data 

# question 9: normal curve of final variable 
hist(Data$final, probability = TRUE)
curve(dnorm(x, mean = 86, sd = 9.63,), col = "darkblue", lwd=2, add = TRUE)

#question 10: The normal distribution curve appears to be skewed with a longer distribution on the left. This would indicate more values were below the mean of the final grades. 