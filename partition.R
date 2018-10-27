#create vector of student names: divide into two groups
studentname= paste('student', 1:10000,sep = ' ')
group1 = sample(length(studentname), size = 4000)
s1 = studentname[group1]
s2 = studentname[-group1]
s1
length(s1)
s2

#create a large DF
sname = paste('s',1:1000,sep = ' ')
gender = sample(x=c('M','F'),size = 1000,prob = c(.6,.4),replace = T)
marks= ceiling(rnorm(1000,60,10))
df= data.frame(sname,gender,marks)
head(df)
table(df$gender)
dim(df)


p3=sample(x=nrow(df),size = .7*nrow(df))
p3 
df[p3,]  
train2=df[p3,]  
nrow(train2)
test2= df[-p3,]
nrow(test2)


library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3 = createDataPartition(y=df$gender,p=.7,list = F))
(train3=df[index3,])
(test3 = df[-index3,])
length(index3)
(t3a = table(train3$gender))
prop.table(t3a)
(t3b = table(test3$gender))
prop.table(t3b)
#proportions of am is almost the same in both samples



