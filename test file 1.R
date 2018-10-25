#assign--
x1=3
x2<-3
#print values
x1
x2
# datasets available for use
data()
women
?women
?mtcars
mtcars
mtcars$mpg
attach(mtcars)
mpg
#libraries currently loaded
library()
#elements
ls()
rm(list = ls())
rm(list = ls(all = TRUE))

#help
?mean
x <- c(0:10, 50)
x
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10))

#create value
1:100
seq(0,100, by = 2)
seq(0,100, by=3)

x = c(0:10,30:40,60:100)
x
rep(1,5)
rep(c(1,4), each= 4)
rep(c(1,4),time= c(2,4))

plot(1:10)
