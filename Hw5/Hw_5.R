#question 1:
#importing data
data1<-read.csv("/Users/Downloads/Assignment/data-table-B8(1).csv",header=T)
#a.multiple linear regression
mod<-lm(y~.,data=data1)
summary(mod)
#b. Normality plot of residuals
qqnorm(mod$residuals)
qqline(mod$residuals)
#c.residual vs fitted
plot(y=mod$residuals,x=mod$fit,xlab="fitted values",ylab="residuals",main="residual vs fitted")
#d. influence analysis
library(MASS)
## COOKS DISTANCE 
cd=cooks.distance(mod) 
cd
plot(cd,main="plot of cook's distance")
## DFFITS 
dfts=dffits(mod) 
dfts
plot(dfts,main="plot of dffits")
#e. Residual analysis
e=residuals(mod) 			## RESIDUAL
std_e=stdres(mod)	## STANDARDIZED RESIDUAL
std_e
r=studres(mod)   			## STUDENTIZED RESIDUAL 
max(abs(r))
t = rstudent(mod) 			## COMPUTING R-Student
#f appropriate transformation
plot(data1)
mod_new=lm(y~x1+I(sqrt(x2)),data1)
summary(mod_new)
qqnorm(mod_new$residuals)
qqline(mod_new$residuals)


#question 2:
#importing data
data2<-read.csv("/Users/Downloads/Assignment/data-table-B10(1).csv",header=T)
#a.multiple linear regression
mod1<-lm(y~.,data=data2)
summary(mod1)
#b. Normality plot of residuals
qqnorm(mod1$residuals)
qqline(mod1$residuals)
#c.residual vs fitted
plot(y=mod1$residuals,x=mod1$fit,xlab="fitted values",ylab="residuals",main="residual vs fitted")
#d Press Statistic
library(MASS)
hat=hatvalues(mod1)
e=residuals(mod1)
pr=e/(1-hat)
PRS_STAT=sum(pr^2)
PRS_STAT

#e. influence analysis
## COOKS DISTANCE 
cd1=cooks.distance(mod1) 
plot(cd1,main="plot of cook's distance")
## DFFITS 
dfts1=dffits(mod1) 
plot(dfts1,main="plot of dffits")
#f. Residual analysis
e1=residuals(mod1) 			## RESIDUAL
std_e1=stdres(mod1)			## STANDARDIZED RESIDUAL
std_e1

