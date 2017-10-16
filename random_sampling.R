#----------------------------------------------------
#  Random Sampling, Structure of Help Page & Sorting
#----------------------------------------------------

a<- c(1:60)
sample(a)
set.seed(100)
sample(a, replace = TRUE)
sample(a,10, replace = TRUE)
args(sample) # to better understand the sample

# using prob in the arguments
sample(c(1:2), 20, replace = TRUE , prob = c(0.2, 0.8))

# Sorting 
b<- sample(a,10, replace = TRUE)
b
sort(b)
sort(b, decreasing = FALSE) # restructures b in ascending order

rev(sort(b)) # reverses order
order(b)
b[order(b)]

# Mini Challenge: From 'a' create a 20% sample with replacement.
#                       Then, Sort the sample in descending order.


#  First lets create a large vector
a<- c(1:round(runif(1, min = 100, max = 150)))
args(sample)
challenge<- sample(a, round(.2*length(a)), replace = TRUE)
print(challenge)
sort(challenge, decreasing = TRUE)