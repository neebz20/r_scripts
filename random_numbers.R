#--------------------------
#  Creating Random Numbers
#--------------------------

# runif( n , min, max): Creates 'n' random numbers between the range 'min' and 'max.' 

# The default value of 'min' and 'max' is 0 and 1 respectively 
runif(10)
runif(10, min = 1, max = 100)

# Use set.seed(n) to reproduce the same set of random numbers 
set.seed(100)
runif(10)

# How to control the number of digits after the decimal 
options(digits = 2)

# MINI CHallenge : Pick 10 random letters between alphabets a-z
class(letters)
# below is how I approached the problem (first attempt)
set.seed(100)
sample(letters, 10)

# below is how I approached the problem (second attempt)
set.seed(100)
i<-round(runif(10, 1, 26))
letters[i]

# I was close but not quite there