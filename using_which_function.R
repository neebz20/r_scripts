#-----------------------------
#  Using which() Foundation
#-----------------------------

a<- c(1:10)
min(a)
max(a)
mean(a)
a[-c(5,6)] # this removes the 5th and 6th value in the 'a' vector

which(a > 5)
a<- c(100:110)
i<- which(a > 107 | a < 104)
a[i]

# MINI CHallegen: From 'a' get: 1. All even numbers 2. all multiples of 5
print(a)
i<-which(a%%2==0 | a%%5 ==0)
a[i]