(rollno=1:30)
(sname=paste('student',1:30,sep=' '))
(gender=sample(c('M','F'),size = 30, replace = T,prob = c(.7,.3)))
(marks=floor(rnorm(30,mean = 50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA','B.tech'), size=30, replace=T, prob=c(.3,.5,.2)))
rollno;sname;gender
marks;marks2;course 
boxplot(marks)
library(dplyr)
install.packages("dplyr")
df1 %>% group_by(course) %>% sumarise(mean(marks), mean(marks2))
library(dplyr)
install.packages("dplyr")
library(dplyr)
df1 %>% group_by(course) %>% summarise(mean(marks), mean(marks2))
