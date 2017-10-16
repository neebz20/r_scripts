#------------------------------
#   ordered vector sequences 
#------------------------------

a<- 1:10
a1<- 10:1

# create a sequence where I only want the odd numbers
seq(1, 20 , by = 2)

# Create a sequence where I only get even numbers
seq(0, 20, by = 2)

a3<- seq(1, length = 50, by = .5)
a4 <- c(a1, a3)
print(a4)

#  Creating repetitions 
rep(1, 5)
rep(1:2, 10)
rep(c(1, 3, 2), each = 3)

# analyze what this does below
repMistake<-rep(c(1:3, each = 4, times = 2)) 
names(repMistake)

# now analyze the difference from below
rep(1:3, each = 4 , times = 2) # this is actually what I wanted to do

# analyze the output for the code below
rep(1:4, 1:4)

# analyzing characters
rep(c("a", "b", "c"), 1:3)

# MINI CHALLENGE: Create this pattern: 1,1,1,2,2,3,4,4,4,4
rep(1:4, times= c(3,2,1,4)) # this is correct 

#  Coding Challenges - 1


# Make a numeric vector that repeats the sequence of all odd numbers 
#  between 1 to 10 two times, with each number repeated thrice 

oddseq<-seq(1, 10, by = 2)
output<-rep(oddseq, each = 3 , times = 2) # This is correct 