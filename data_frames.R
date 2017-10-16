#-----------------
#  Dataframes 
#-----------------

a<- c(1,2,3,4,NA)
b<- c(6,7,8,NA,10)
c<- c(11,12,NA, 14,15)
d<- c(16, NA,18,19,20)
e<- c(21,22,23,24,25)

df<-data.frame(a,b,c,d,e)

nrow(df)
ncol(df)
stack(df)
rdf<- rbind(df,df,df)
cdf<- cbind(df,df,df)

cdf
rdf
head(rdf)
rdf.col.sum<-colSums(rdf, na.rm = TRUE)
mean(rdf.col.sum)
summary(rdf.col.sum)
plot(rdf.col.sum)
rdf

#  Data Frames pt. 2

View(rdf)

colnames(rdf)<- c("a1", "b1", "c1", "d1", "e1")

# we want to return values in column e greater than 21

rdf[which(rdf$e1 > 22), ]
rdf[which(names(rdf) %in% c("c1", "d1")), ]

# This loop is fine but it not the structure I am looking for 
for(i in rdf$e1){
  if(i >= 23){
    print(i)
  } else{
    print("FALSE")
  }
}