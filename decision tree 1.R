gender=sample(c('M','F'),size = 10000,prob = c(.6,.4),replace = T)
age=ceiling(rnorm(1000,35,5))
buy=sample(c('Yes','No'),size = 10000,prob = c(.5,.5),replace = T)
df=data.frame(buy,gender,age)
head(df)


dtree1=rpart(buy~gender+age,data = df,minsplit=10,minbucket=4,cp=.001) #complexity parameter   for cp=-1, it will give the fully grown tree
#minsplit: when we get 10 obs in a node it splits or else it doesnt
#minbucket:4 no. of obs are required to stay as a leaf node
dtree1
dtree1$variable.importance
printcp(dtree1)

rpart.plot(dtree1,cex=.8,nn=T)
