# pg. 50 working with AUTO data 

BOOK: AN INTRODUCTION TO STATISTICAL LEARNING

install.packages("ISLR")
library(ISLR)
View(Auto)
names(Auto)
summary(Auto)

# Using plot() function 
attach(Auto)
plot(Auto$cylinders, Auto$mpg, col = "red")
plot(Auto$cylinders, Auto$mpg, col = "red", xlab = "Cylinders", ylab = "MPG")

# Using Hist() command

hist.1<-hist(mpg, col = 2, breaks = 15)
abline(v = mean(Auto$mpg, na.rm = T), col = "blue", lwd= 2)
abline(v = median(Auto$mpg, na.rm = T), col = "green", lwd= 2)
hist.1

summary(mpg)

# Using pairs() Function
pairs(Auto)
pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)
plot(horsepower, mpg)
identity(horsepower, mpg, name)
savehistory()

View(Advertising)
names(Advertising)
attach(Advertising)
pairs(Advertising, pch = ".")

ad.lm<-lm(Sales~., data = Advertising )
summary(ad.lm)

anova(ad.lm)
#  P value for Newspaper is is closer to 1, quite large 

boxplot( Sales~ ., data = Advertising)