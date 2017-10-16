#---------------------------------------
#  For loops & related functions 
#---------------------------------------

loopvec<- c(1:15)
total <- 1

for(i in loopvec){
  total <- total * i
}
total

options(scipen = 999)

total<- 1
for(i in loopvec){
  if(i%%2 == 0){    # "==" means modulo
    total <- total * i
  }
}
total

total<-1
for(i in seq(2, 15, by =2)){
  total <- total * i
  if(i == 8){
    break
  }
}
total


# what if I want to skip 8 and move on to 10

# incorporate the "next" command

total<-1
for(i in seq(2, 15, by =2)){
  total <- total * i
  if(i == 8){
    next
  }
}
total


# MINI Chaallenge: Creaate a for loop that prints alphabets from a to z

for(i in letters){
  print(i)
}
