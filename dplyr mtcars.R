#analysis of dataset mtcars using mtcars
library(dplyr)
?mtcars
mtcars%>%summarise(mean(cyl))
mtcars%>%group_by(gear)%>%summarise(mean(am),mean(drat))
mtcars
#structure of a data frame
str(mtcars)
dim(mtcars)#dimensions
names(mtcars)#column names
rownames(mtcars)#rownames
summary(mtcars)



#summary activities on mtcars

t1=table(mtcars$am)
pie(t1)
19/32*360
pie(t1, labels = c('auto','manual'))

t2=table(mtcars$gear)
pie(t2)
pie(t2, labels = c('3 gear transmission','4gear transmission','5 gear transmission'))
barplot(t2)
barplot(t2,col = 23:33)
barplot(t2,col = c('red','yellow','blue'),xlab = 'no. of gears',ylab = 'no. of cars')
?barplot
title('Gear Distribution')
plot(mtcars$gear,mtcars$cyl)
?plot
boxplot(mtcars$gear,mtcars$cyl)

#using dplyr %>% is chaining function
mtcars%>%select(mpg,gear)%>%slice(1:5)  #select for rows and column and slice for row selection
?slice
mtcars%>%arrange(mpg)# arrange in ascending order for columns
mtcars%>%arrange(am,desc(mpg))%>%select(am,mpg) # descending order and selected two columns
?mtcars
mtcars%>%arrange(drat,hp)%>% select(carb,hp)
mtcars%>%arrange(desc(disp))%>% select(vs,qsec,hp)
mtcars%>%mutate(rn=rownames(mtcars))%>%select(rn,vs,qsec,hp)#mutate adds row names 

mtcars%>%slice(seq(1,32,4))# select rows after interval of 4
mtcars%>%sample_n(4)#select random 4 rows
mtcars%>%sample_frac(.1)#selct randomly 10% of the row data
mtcars%>%select(sample(x=c(1:11),size = 2)) %>% head

mtcars%>%mutate(newmpg=mpg*1.2) #new column with 1.2 tmes mpg

#types of tx, mean

mtcars%>%group_by(am)%>%summarise(MEANMPG=mean(mpg),MAXHP=max(hp),MinGear=min(gear))
mtcars%>%group_by(gear,vs)%>%summarise(SUMwt=sum(wt),MEANdrat=mean(drat),MAXqsec=max(qsec))
?filter
