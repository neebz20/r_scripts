#-----------------
#  Operation Sets 
#-----------------

# overlap elements 

a<- c(1:6)
b<- c(5:10)
# how to check if a certain number is present in a certain vector
1%in%a
10%in%a
a%in%b

# same way we can achieve this by
is.element(a,b)

# how to get the union of (a,b)
union(a,b)
intersect(a,b)
setdiff(a,b) # remove elements in a that are present in b
unique(c(a,b)) # similar to what union gives but works a little differently 

# MINI Challenge: Get the non-repeating elements between a and b
a<- c(11:15)
b<- c(13:17)

# How I did it
challenge<- setdiff(a,b)
print(challenge)

# How instructor did it
u<- union(a,b)
i<- intersect(a,b)
u
i
challenge<-setdiff(u,i)
print(challenge)