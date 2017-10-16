#---------------------------------------
#  Special ways to check Conditioning 
#---------------------------------------

# Condition statement to check if Rob can vote

robs_age <- 31
if(robs_age >= 18){
  print("Allow to vote")
} else{
  print("Don't vote")
}

# What about groups?
args(runif)
group1<- round(runif(30, 10, 40))

# I want to build a condition if any one member has the age < 13, don't allow the group to work

any(group1 < 10)
if(all(group1 < 10)){
  print("Too young")
} else{all()
  print("Old Enough")
}

# USing Else if structure 
if(robs_age >= 18){
  print("Allow to vote")
} else if (robs_age > 18){
  print("Don't vote")
} else{
  print("Something else")
}

# can substitute any with all

# what if I want to check the condition for each member inthe group
output<-ifelse(group1 >10 | group1 > 18, "Allow to vote", "Dont vote")
output


# MINI Challenge: Create a numeric vector of length 20, representing heights of children
#                 entering a theme park. Let the heights lie between 1ft. to 6ft
#            If the height > 3ft., the entry is "free" else the entry is "paid"

height <- c(1:20)
height
if( 1<=height<=6){
  print("Free")
} else{
  print("Paid")
}

# My attempt
ifelse(height>=1 & height<=6, "Free","Paid" )