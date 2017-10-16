#--------------------------
# Understanding Data Types
#--------------------------

# different data types: numeric, integer, character, factor, logical
a <- 1 
class(a)
b<- as.integer(a)
class(b)
a<- 1.6
b<- as.integer(a)
print(b)
# Character Data Type
d <- '12345'
class(d)

ls() # list all variables in system's memory

# Assume I clean my system's memory then I could assign
ls()-> e # when I print e, my output will be: a, b, d

#factors data type

f<- factor(c("male","female","male","female","male","female"))
print(f)
levels(f)
class(levels(f))
nlevels(f)
#logical data type
g<- TRUE
class(g)
h<- "TRUE"
class(h)

# MINI CHALLENGE: Create a factor variable with 3 levels and 6 items
colors<- factor(c("Blue", "Green", "Yellow","Blue", "Green", "Yellow"))
levels(colors)
nlevels(colors)
class(levels(colors))