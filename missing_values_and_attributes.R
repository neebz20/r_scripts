#----------------------------------
#  Missing Values and Attributes 
#----------------------------------

a<-c(1,2,3,4,5,1,2,3,4,5)
a[10]<- NA

# is.na(vec): CHecks if each element of 'vec' is missing values or not.
is.na(a)
a[is.na(a)] # what this does: Only those intems of 'a', that are marked 'TRUE' by is.na(a) will be filtered 
!is.na(a) # Remember '!' is a negation operator -> so for this 
a[!is.na(a)]

# na.omit(vec) removies all NAs from 'vec'
b<-na.omit(a)

# attr(obj, "attrname") returns the value contained in 
#  attribute 'attrname, which is an attribute of 'obj'
attr(b, "na.action")
c<- attr(b, "na.action")
c

# creating attributes 
attr(b, "myattributes")<- "random"
attributes(b)
a[a==1] # remember NA will still appear because it is neither true nor false 
a[!a==1]
a%in%c(1,3)
a[a%in%c(1,3)]

# MINI Challenge: Remove all the even numbers and the missing values from 'a'
print(a)
# Below is how I approached the problem (first attempt)
b<-na.omit(a)
b[which(b%%2 !=0)]
odd.b<-b[which(b%%2 !=0)]
print(odd.b)

# Below is how I approached the problem (second attempt)
a[!is.na(a)]
b<-a[!is.na(a)]
b[!b%%2 == 0]