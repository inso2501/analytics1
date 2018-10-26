#import export data files
#check for files and folders
dir('./data2')
list.files('./data2')
file.exists('./data/mtcars.csv')
list('./analytics1')
file.exists('.Data 2/HHE')
list.files('./Data 2')
file.exists('./Data 2/hhe.txt')
data= scan("./Data 2/hhe.txt",what = "character")
class(data)
head(data)



#csv read from csv
#first create as csv file from iris data set
head(iris)
?iris
write.csv(iris,"./data/iris.csv",row.names = F)#goto folderdata n see iris.csv

read1=read.csv(file = "./data/iris.csv",header = TRUE, sep = ",")
str(read1)
class(read1)
read2=read.table(file = "./data/iris.csv",header = TRUE, sep = ",")
str(read2)
head(read2)



#csv read from web
read_web1=read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)
?head
#import from google sheet
library(gsheet)
url_gsheet="https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865532"
df_gsheet= as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#1st row contains variable names
library(xlsx)
library(rJava)
Sys.setenv(JAVA_HOME='c:\\Program Files\\Java\\jre1.8.0_181')
