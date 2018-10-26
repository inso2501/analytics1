#data structures in slides


#vector
x=1:10  #create seq
x
x1 <- 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)


(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a', "inso",'4'))
class(x3b)

(x4=c(T,TRUE,FALSE,T,F))
class(x4)

x5=c(4L,5L,18L)
x5
class(x5)


#access elements
(x6=seq(0,100, by=3))
ls()
x6
length(x6)
x6[20]
x6[c(2,4)]
x6[ seq(1, length(x6),2)]
x6[-1]
#error inx


#sort, order
set.seed(123)
(x6=sample(1:20))
sort(x6)
sort(x6[-c(2,4)])
sort(x6,decreasing = T)
rev(x6)


seq(-3,10, by=2)
x6[-c(1:12)]
(x=-3:5)
x[3]<-01
x


(x=1:10)
x


#martix
100:111
(m1=matrix(100:111, nrow=4))
(m2=matrix(100:111,ncol=4,byrow = T))
x=101:124
length(x)
m3=matrix(x,ncol=6)
class(m3)
attributes(m3)
dim(m1)


#access ekements ofmatrix
m3
m3[1,]   #print 1st row
m3[,2]   #print 2nd column
m3[,c(1,3)]


#names of column and rows
m1

paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1) = paste('C',1:3, sep=''))
m1
(rownames(m1) = paste('R',1:4, sep=''))
m1
attributes(m1)

#row and col wise summary
m1
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)
dim(m1)


t(m1)
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+" ) #rowise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*" ) #colwise
m1


#addmargins
m1
?addmargins
addmargins(m1,margin=1,sum) #colwise function
addmargins(m1,1,sd) #colwise function

addmargins(m1,2,mean) #rowwise function
addmargins(m1,c(1,2),mean) #row & col wise function
addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd))) #row & col wise function


#data frame
#create vector to be combined in DF
(rollno=1:30)
(sname=paste('student',1:30,sep=' '))
(gender=sample(c('M','F'),size = 30, replace = T,prob = c(.7,.3)))
(marks=floor(rnorm(30,mean = 50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA','B.tech'), size=30, replace=T, prob=c(.3,.5,.2)))
rollno;sname;gender
marks;marks2;course 


#create DF
df1=data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = F)
str(df1) #structure of DF
head(df1)#top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) # DF
summary(df1) #summary
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)


df1
df1$gender
df1[,c(2,4)]
df1[1:10,]
df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df1[ marks > 50 & gender=='F', c(1,2)]
df1[ marks > 50 | gender=='F', ]

names(df1)
aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))
library(dplyr)
