#-----------------------------
#  Convert Variable types
#-----------------------------


vec1<- 1:10
class(vec1)
vec2<- letters[1:10]
class(vec2)
vec3<- factor(1:10)
class(vec3)

vec4<- as.numeric(vec1)
vec5<- as.character(vec1)

vec6<- c(2, "d")
class(vec6)

vec7<- c(2, TRUE)
class(vec7)

# REMEMBER Priority:
#       "Character > Numeric > Logical

# Caveat: Converting factor to numeric (A very common mistake)
class(vec3)

vec8<- as.numeric(vec3)
class(vec8)
vec9<- factor(round(runif(10,10,70)))
vec9
vec10<-as.numeric(vec9) # THis a very common mistake do not do this
vec10 # the corresponding levels as its corresponding vecto (BAD)
vec11<- as.numeric(as.character(vec9))
vec11
vec9
vec11 == vec9

#MINI CHALLENGE: Create a factor vector(v1) using random numbers.
#   Then convert that factor vector to its corresponding numeric vector(v2).
#     All values v1 and v2 should match

v1<-as.factor(c(1,4,33,6,88,96,2,1,4))
print(v1)
v2<-as.numeric(as.character(v1))
print(v2)
v1 == v2