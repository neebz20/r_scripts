#------------#
#  Vectors   
#------------#

# Numeric vectors
a <- 10
a1<- c(10, 20, 25, 10, 25)
print(a1)
class(a1)
length(a1) # length() gives the number of intems in 'a'
a1[3] # remember square brackets will fetch me the specific element for my output

# character vectors
a2<- c("a", "b", "c", "d", "e")
print(a2)
class(a2)
levels(a2) # levels = NULL
# creating a numeric and character vector
a3<- c(1, 2, "a")
print(a3)

class(a3)

# MiNI CHALLENGE: Assuming that you don't know the size of 'ab' , get the first and last element of 'ab'
ab<- c(1,2,3,4,1,2,3,4,5,6,1,2,3,4,6,7,8,9)
# This is my initial way
length(ab)
head(ab, n = 1)
tail(ab, n =1)
# more efficient way
ab[c(1,length(ab))]