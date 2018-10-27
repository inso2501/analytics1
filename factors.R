

#factors
gender=(sample(c('M','F'),size = 20,prob = c(.6,.4),replace = T))
summary(gender)


gender=factor(gender)
summary(gender)



#ordered factors
set.seed(2000)
p1=sample(c('Ex','poor','sat','good'),size = 20,replace = T)
p1
p1=factor(p1)
summary(p1)

p1of= factor(p1,ordered = T,levels = c('Ex','good','sat','poor'))
summary(p1of)
barplot(table(p1))
barplot(table(p1of),col= 1:4)
