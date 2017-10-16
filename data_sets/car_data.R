#-------------------
	Car Data
#-------------------


install.packages('faraway')
library(faraway)
library(ggplot2)
data('mtcars')
head(mtcars)
names(mtcars)

## Data Dictionary ##

#  mpg  :	 Miles/(US) gallon
#	 cyl  :	 Number of cylinders
#	 disp :	 Displacement (cu.in.)
#	 hp   :	 Gross horsepower
#	 drat :	 Rear axle ratio
#	 wt   :	 Weight (1000 lbs)
#	 qsec :	 1/4 mile time
#	 vs	  :   V/S
#	 am   :	 Transmission (0 = automatic, 1 = manual)
#	 gear :	 Number of forward gears
#	 carb	:  Number of carburetors


cor(mtcars$qsec, mtcars$hp)

mpg_hist<- ggplot(data = mtcars, aes(x =mpg))+
  geom_histogram(binwidth = 5)+
  xlab("MPG")+
  ylab("Frequency")+
  ggtitle("MPG Histogram")

mpg_hist
#---------------------------------------------

mod1 <- lm(mpg ~ . , data = mtcars )
mod1
#Nothing is significant. This is not surprising because the data set is short and wide.

plot(mpg ~ ., data = mtcars)
# hp
# wt
#  carb possibly?