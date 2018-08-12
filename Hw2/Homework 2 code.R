#problem 1141
#importing the data1141
#data1<-read.csv("/Users/Downloads/data1141.csv",header=T)
data1 <- read.csv(paste(getwd(),"/data1141.csv",sep = ""),header=T)
#Welch two sample t test 
t.test(data1$X2008_mins,data1$X2003_mins,"greater",mu=0)

#problem_1150
# importing data 1150
data2 <- read.csv(paste(getwd(),"/data1150.csv",sep = ""),header=T)
#paired t test
t.test(data2$After,data2$Before,"greater",paired=TRUE,mu=0,conf.level=0.995)

#problem_1057
#importing data1057
data3 <- read.csv(paste(getwd(),"/data1057.csv",sep = ""),header=T)
#one sample t test
t.test(data3$Expense,mu=817)




