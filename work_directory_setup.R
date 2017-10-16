
#--------------------------------------
#   Setting up Working Directory & Misc
#--------------------------------------

# setwd() : Sets up the working directory
# getwd() : Check what is your current working directory 

basicDir<- "/Users/dnebel20/Documents"
basicDir
setwd(basicDir)
getwd()
list.files("/Users/dnebel20/Documents")

dir("/Users/dnebel20/Documents")

file.create("myFile.txt")

fpath<-file.path("/Users/dnebel20/Documents", "myFile.txt")
file.create("/Users/dnebel20/Documents")

# Saving this File
save.image("myImage,RData")
load("myImage,RData")


# rm("object1") will delete just the variables named 'object1'.
# rm(list= ls()) will delete everything in global environment

# to save a specific object
save('a', file = "a.RData")