#-----------------------------
#  Lists
#-----------------------------


vec1 <- 1:3
vec2 <- letters[1:3]
vec3<- factor(1:3)
l1<- list(vec1,vec2, vec3)
print(l1)
class(l1) # "Lists"

l1[1] 
l1[[1]] # only produces levels in the matrix

# We now must attach names to each level
names(l1)<- c("one", "two", "three")
l1["one"] # same as l1$one
l1["two"] # same as l1$two
l1["three"] # same as l1$three

a<- unlist(l1) # will unlist the entire matrix l1
a

# MINI Challenge: 1. Create a list 'l2' with a numeric c(1,2,3)
#                     and character vector c('a','b','c').
#                 2: Give names to the vectors in list 'l2'
#                 3: Extract item "c" from the list using both '$' notation and'[']

vec1<- c(1,2,3)
vec2<- letters[1:3]
l2<-list(vec1, vec2)
l2
names(l2)<- c("one", "two")
l2
class(l2)

#Different ways to achieve the challenge:

# 1
a<-l2$two # less efficient  (too many added steps)
a[3]

# 2
l2[[2]][3]

# 3
l2$two[3]
