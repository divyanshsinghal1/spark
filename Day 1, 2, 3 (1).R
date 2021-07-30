#saving all objects
save.image('all_objects.Rdata')

getwd

#Arithmetic operator

45+76
45*76
45/76
34^2
35%%2

35%/%2

# Assignment operator

x <- 4
4 -> xx
xx
print(x)

# Relational
# == whether equal
# != not equal
# > greater than
# >= greater than or equal
# <, <=
# %in%
  
# Logical operators

--AND
T && T
T && F
F && F
F && T

vec1 <- 12

vec1>10 && vec1>5
vec1>10 && vec1>15

--OR
T || T
T || F
F || F
F || T

vec1>10 || vec1>5
vec1>10 || vec1>15

#-----Element-wise operation

a <- c(T,T,T)
b <- c(T,F,T)

a && b
a & b

--NOT
vec1 <- 12

!(vec1>5)

# multiline  - ctrl + C
# comments

#Data Types

# 1. logical: TRUE, FALSE

v <- TRUE
v
#explicit printing
print(v) 
class(v)

# 2. Numeric - real numbers

v <- 23.5
class(v)

# 3. integer

v <- 23L
v
class(v)

# 4. Complex

v <- 2+3i
v
class(v)

# 5. Character

v <- 'good'
v
class(v)
v <- 'TRUE'
v
class(v)

num <- "2345"
class(num)

# 6. Raw

v <- "Hello"

v_raw <- charToRaw("Hello")
class(v_raw)

# Rules for identifiers

#Identifiers can be combination of letters, digits,period(.) and underscore(_)
#It must start with  a letter or a period. If it starts with a period - it cannot be 
#followed by a digit

v23.b_r <- 234

#Data Structure

# 1. Vector - one dimensional homogenous data structure

vec <- c(23, 28, 34, 38, 29, 72)
vec

names <- c('John', 'Jayna', 'Jack', 'Joy')
gender <- c('M', 'F', 'M', 'M')
local <- c(T, T, F, T)
age <- c(24 ,23, 32, 28)

mix <- c(23,T,'John')

mix

class(names)
class(gender)
class(local)


mix <- c(23,T)

mix
mix <- c(23,F)
mix

mix

print(mix)

consec_num <- 1:50
consec_num

seq(1,50,1)
seq(1,50,2)
seq(1,50,.5)

#help page
?seq
?mean

#Subsetting
vec <- seq(1,50,.5)
vec
length(vec)

vec[2]
vec[c(1,6,8)]


# 2. Matrix - 2 dimensional homogenous data structure

names <- c('John', 'Jayna', 'Jack', 'Joy')
matrix(names)
matrix(names,nrow=2)
matrix(names,nrow=2,byrow=T)

mat1 <- matrix(names,nrow=2,byrow=T)
mat1

#Subsetting
mat1
mat1[1,2]
mat1[1,]
mat1[,2]

mat2 <- matrix(23:58,nrow=6)
mat2
mat2[c(1,4),c(2,6)]

# 3. Array - similar to matrix (homogenous) but can have more than 2 dimensions

a <- c(21,24,26,78)
b <- c(65,78,96,28)
mat1 <- matrix(a,2,2)
mat2 <- matrix(b,2,2)
mat1
mat2

arr <- array(c(mat1,mat2),c(2,2,2))

arr[,,2]

# 4. Factor - Factors take only a predefined, finite number of categorical values

gender

fc <- factor(gender)
fc[2]

# 5. Dataframe

df <- data.frame(names,gender,local,age)
df
?read.csv

cars <- read.csv(file.choose(),stringsAsFactors=F)

class(cars)
str(cars)

# working directory

getwd()

setwd('/home/labsuser/datasets')
getwd()

file1 <- read.csv('cars.csv')
file2 <- read.csv('Cricket HYP.csv')

file1 <- read.csv('/home/labsuser/cars.csv')


# No of row and columns
nrow(cars)
ncol(cars)

# convert to desired type
cars$Type <- factor(cars$Type)

class(cars$Type)

#Subsetting

cars$Model

# head or tail - 6 records by default

head(cars)
tail(cars)

head(cars,2)
tail(cars,10)

cars[1,2]

cars[1,]
cars[c(1,3),]
cars[c(1,3),c(1,2,9)]

cars[c(1,3,6),c('Make','Type','Horsepower')]

cars[1:20,c('Make','Type','Horsepower')]

head(cars[1:20, c('Make','Type','Horsepower')])

#subsetting based on condition

summary(cars$Horsepower)

#find the data where horsepower is more than 100

cars_100 <- cars[cars$Horsepower>100,c('Make','Model','Horsepower')]

nrow(cars_100)

# finding the names of headers

names(cars)

#find the data where horsepower is above average

cars_aa <- cars[cars$Horsepower>mean(cars$Horsepower),c('Make','Model','Horsepower')]
nrow(cars_aa)

cars_bb <- subset(cars,cars$Horsepower>mean(cars$Horsepower))

nrow(cars_bb)

names
'Tom' %in% names

'John' %in% names
'john' %in% names

names %in% 'John'
names %in% c('John','Jayna')

'Maruti' %in% cars$Make

'Toyota' %in% cars$Make

#Subset for Volvo and Volkswagen

vv <- cars[cars$Make %in% c('Volvo','Volkswagen'),]
nrow(vv)

vv2 <- subset(cars,cars$Make %in% c('Volvo','Volkswagen'))
nrow(vv2)

table(cars$Make)

vec <- c(2,3,4,6,6,7,2,2,7,2)

2 %in% vec

vec %in% 2
!(vec %in% 2)
sum(vec %in% 2)
sum(!(vec %in% 2))

# no of records where no Voks and Vol

sum(!(cars$Make %in% c('Volvo','Volkswagen')))

# Horsepower between 100 and 200(100 and 200 not included)

cars[(cars$Horsepower > 100) & (cars$Horsepower < 200),]
nrow(cars[(cars$Horsepower > 100) & (cars$Horsepower < 200),])
sum((cars$Horsepower > 100) & (cars$Horsepower < 200))

table(cars$Origin)
table(cars$Origin,cars$DriveTrain)

tab <- table(cars$Origin)

class(tab)

names(tab)

tab1 <- table(cars$Make)
tab1

# write a program to find the 'Make' which is most
#frequent in the data

tab1
max(tab1)

names(tab1)[tab1 == max(tab1)]

names(tab1)
names(cars)
names(tab1)

# Negative indexing

vec <- c(23, 28, 34, 38, 29, 72)

vec[1]
vec[-1]
vec[-3]

vec[c(3,6,1,4,2,5)]

cars1 <- cars[1:10,c('Make','Origin','Horsepower','MSRP')]
cars1
names(cars1)
car1
cars1[,c('Origin','Make','Horsepower','MSRP')]

mean(cars$MSRP)
median(cars$MSRP)

m <- c(2,4,5,7,7,7,8,8)

new_function <- function(x,y){
z = 2*x+3*y
print(z)
}

new_function(4,9)

mymode

m <- c(2,4,5,7,7,7,8,8)

table(m)

names(table(m))[table(m)==max(table(m))]

mymode <- function(x){
  print(names(table(x))[table(x)==max(table(x))])
}

mymode(m)

mymode(cars$Make)

# a few important text functions

vec1 <- c('Shubham','Pandey')

toupper(vec1)
tolower(vec1)
toupper(cars$Origin)
cars$Origin_caps <- toupper(cars$Origin)

vec2 <- c('pandey.shubham@gmail.com','pandey.shubham@thelearnersgalaxy.com')

substr(vec2,2,10)
substring(vec2,2)

#First 6 characters by XX
substr(vec2,1,6) <- ''
vec2

?paste()
paste0

str1 <- 'shubham'
str2 <- 'pandey'

paste(str1,str2)
paste0(str1,str2)
paste(str1,str2,sep='-')
paste(str1,str2,sep='')

#task for you

names <- c('sHuBHaM', 'bHASkar')

toupper(substr(names,1,1))
tolower(substring(names,2))

paste0(toupper(substr(names,1,1)),tolower(substring(names,2)))

proper_fn <- function(x){
  
  print(paste0(toupper(substr(x,1,1)),tolower(substring(x,2))))
}
proper_fn(names)

mean(cars$Horsepower)

attach(cars)
mean(Horsepower)

?paste

vec <- c('apple','oranges','papaya','grapes')
paste(vec,collapse=',')

install.packages('stringr')
library('stringr')


vector1 <- c(' John Bolomker','Jayna Hayne Bolomker  ','  Alex Johnathan ')

#removing spaces

trimws(vector1)
trimws(vector1,which='left')
trimws(vector1,which='right')
trimws(vector1,which='both')

#detecting a string

vector2 <- trimws(vector1,which='both')
vector2

str_detect(vector2,'Bolomker')

#replacing

str_replace(vector2,'Bolomker','')

n <- c('sHubHAM PaNDEY','bHasKAR KUMAr')
str_to_title(n)

vector1 <- c(' John Bolomker','Jayna Hayne Bolomker  ','  Alex Johnathan ')

?sub(' ','',vector1)

str1 <- 'sHuBHam pANDEY'

gregexpr(' ',str1)[[1]][1]

p <- gregexpr(' ',str1)[[1]][1]

substr(str1,p+1,p+1)
substring(str1,p+1)

# 6. List

names <- c('John', 'Jayna', 'Jack', 'Joy')
gender <- c('M', 'F', 'M', 'M')

list1 <- list(str1,cars,names,gender)

list1[[1]]
list1[[2]]
list1[[3]]
list1[[4]]



list1[1]
list1[2]
list1[3]
list1[4]

class(list1[[4]])
class(list1[4])

class(list1[[2]])
class(list1[2])

list2 <- list(a=1:34,b=35:69)

lapply(list2,sum)
lapply(list1,class)

sapply(list2,sum)
sapply(list1,class)

lapply(cars,class)=='character'

sum(lapply(cars,class)=='character')
#sum(lapply(cars,class)=='factor')

table(lapply(cars,class)=='character')

cars[,lapply(cars,class)=='character']

cars[,!lapply(cars,class)=='character']

setwd('/Users/learnersgalaxy/Downloads/csv_files')
getwd()

csv_data <- dir()

files <- lapply(csv_data,read.csv)

files[[1]]
files[[2]]
nrow(files[[1]])
nrow(files[[2]])

#####---Conditional statement and loops----######


age <- 10

if(age>10){
  print("more than 10")
}else{
  print("less than or equal to 10")
}

if(age>10){
  print("more than 10")
}else if(){
  print("less than 'x' more than 'y'")
  }else if(){
  print()
  }else{
    
  }
  }
}

>=40 - ">=40"
25-40- "25-40"
10-25- "1-25"
<10-  "<10"

age<-5

if(age>=40){
  print(">=40")
}else if(age>=25 & age<40){
  print("25-40")
}else if(age>=10 & age<25){
  print("1-25")
}else{
  print("<10")
}

check <- function (x){
  if(x<10){
    '<10'
  }else if(x<25){
    "10-25"
  }else if(x<40){
    '25-40'
  }else{
    '>40'
  }
}


a<-25
if (a>=40){
  print ('>=40')
}else if (a<40 && a>=25){
  print ('25-40')} else if (a>=25 && a<=1){
    print("1-25")} else if(a<=10){
      print("<=10")
    }

>=40 - ">=40"
25-40- "25-40"
10-25- "10-25"
<10-  "<10"

if(x>=40){
  print("x>=40")
}else if(x>=25){
  print("25-40")
}else if(x>=10){
  print("10-25")
}else{
  print('<10')
}
}

summary(cars$MSRP)

# create a column named - 'MSRP-bins' depending on the values of MSRP

#MSRP>=150,000  - >=150k
#MSRP-100,000 - 150,000  - 100k-150k
#MSRP-<100,000           - <100k

fn_bins <- function(x){
  
  if(x>=150000){
    return(">=150K")
  }else if(x>=100000){
    return("100k to 150k")
  }else{
    return("<100K")
  }
}

fn_bins(200000)

fn_bins(1200)

cars$MSRP_bins <- lapply(cars$MSRP,fn_bins)
cars$MSRP_bins <- sapply(cars$MSRP,fn_bins)

cars$MSRP_bins

head(cars)

table(cars$MSRP_bins)

cars[cars$MSRP_bins=='>=150K',]

sum(cars$MSRP_bins =='>=150K')

table(cars$MSRP_bins)

#deleting a column
cars$MSRP_bin <- NULL

# Titanic

train <- read.csv(file.choose(),stringsAsFactors = F)
test <- read.csv(file.choose(),stringsAsFactors = F)

nrow(train)
nrow(test)
nrow(train)+nrow(test)

names(train)
names(test)

test$Survived <- 999

combi <- rbind(train,test)
nrow(combi)

summary(combi)

is.na(combi$Age)

sum(is.na(combi$Age))
sum(!is.na(combi$Age))

combi[is.na(combi$Age),]
combi[!is.na(combi$Age),]

sum(is.na(combi))

# deleting data with missing values

combi_nomiss <- na.omit(combi)
nrow(na.omit(combi))
nrow(combi)

sum(is.na(combi$Age))

mean(combi$Age,na.rm=T)

combi$Name

str_detect(combi$Name,'Master')

sum(str_detect(combi$Name,'Master'))


# Can we create a column with only Title(salutations) values of names

#combi$Name <- as.character(combi$Name)

class(combi$Name)
combi$Name[2]

strsplit(combi$Name[2],split='[,.]')

strsplit(combi$Name[2],split='[.,]')[[1]][2]

strsplit(combi$Name[1],split='[.,]')[[1]][2]

f <- function(x){
  strsplit(x,split='[.,]')[[1]][2]
}

combi$Name_T <- sapply(combi$Name,f)

unique(combi$Name_T)

table(combi$Name_T,combi$Sex)

combi$Name_T <- trimws(combi$Name_T)

mean(combi[combi$Name_T=='Master',]$Age,na.rm=T)

aggregate(combi$Age,list(combi$Name_T),FUN=mean,na.rm=T)

mean(combi[combi$Name_T=='Master',]$Age,na.rm=T)

combi[combi$Name_T=='Master',]$Age

mean(combi[combi$Name_T=='Master','Age'],na.rm=T)


aggregate(combi$Age,list(combi$Name_T),mean,na.rm=T)

tapply(combi$Age,combi$Name_T,mean,na.rm=T)

table(combi$Name_T)

# Replace the missing values in Age where Title is master.

combi$Age[(combi$Name_T=='Master') & is.na(combi$Age)] <- mean(mean(combi[combi$Name_T=='Master','Age'],na.rm=T))

# Create a column 'Age_bins' - 
# Let there be missing values

# age<10 -- 'kid'
# 10-25  -- 'young'
# 25-40  -- 'Adult'
# >40  --  'Senior'


bins <- function(x){
   if(is.na(x)){
    return('missing') 
  }else if(x>40){
    return('Senior')
  }else if(x>25){
    return('Adult')
  }else if(x>10){
    return('young')
  }else{
    return('kid')
  }
}

combi$Age_bins <- sapply(combi$Age, bins)

unique(combi$Age_bins)

x <- 14

ifelse(x<10,"right",'wrong')

cars$HP_cat <- ifelse(cars$Horsepower>200,'>200','<200')

cars$Horsepower

# Find the number of missing values in each column in the data combi

sum(is.na(combi$Age))

lapply(combi,function(x){sum(is.na(x))})


##### Loops #####

vec <- c(23,45,67,12,34,98)

vec[1]
vec[2]
vec[3]


for(i in 1:length(vec)){
  print(vec[i])
}
1:length(vec)

for(i in c('a','b','c')){
  print(i)
}


n <-  c('nitin','ankit','vikram')

n[1]
n[2]
n[3]

for(name in n){
  print(name)
}

for(i in 1:length(vec)){
  print(vec[i])
}


for(i in vec){
  print(i)
}

vec

for(val in vec){
  print(val)
  if(val>50)
    break
}

for(val in vec){
  if(val>50)
    break
  print(val)
}

for(val in vec){
  if(val==67)
    next
  print(val)
}

i <- 4

while(i<10){
  print(i)
  i=i+1
}

i <- 4

repeat{

  print(i)
  i=i+2
  if(i==20){
    break
  }
}

#### How to deal with duplicates #######

df=data.frame(A=c('foo','foo','foo','bar','foo','foo'),B=c(0,1,1,1,0,0),
              C=c('A','A','B','A','A','A'))
df

duplicated(df)

duplicated(df,fromLast = T)
duplicated(df,fromLast = F)

unique(df)

df[duplicated(df),]

df[!duplicated(df),]

df[duplicated(df[,c('A','C')]),]

# Zomato

install.packages('readxl')

library('readxl')

zomato <- as.data.frame(read_excel(file.choose()))

names(zomato)
nrow(zomato)

zomato$Cuisines
paste(zomato$Cuisines, collapse=',')

strsplit(paste(zomato$Cuisines, collapse=','),',')

table(strsplit(paste(zomato$Cuisines, collapse=','),','))

table_df <- data.frame(table(strsplit(paste(zomato$Cuisines, collapse=','),',')))

# How to sort

vect <- c(23,35,2,56,12,5)

order(vect)

vect[order(vect)]
vect[order(-vect)]

table_df <- data.frame(table(strsplit(paste(zomato$Cuisines, collapse=','),',')))

table_df[order(-table_df$Freq),]

unique(table_df[order(-table_df$Freq),'Var1'])

table_df$Var1 <- trimws(table_df[order(-table_df$Freq),'Var1'])

unique(table_df$Var1)

table_df$Var1 <- trimws(table_df$Var1)

table_df <- table_df[order(-table_df$Freq),]
table_df
tapply(table_df$Freq, table_df$Var1, sum)

install.packages('tidyverse')

library('tidyverse')

library('dplyr')

cars <- read.csv(file.choose())

cars[1:3,]

#Select

select(cars,Make,Horsepower,MPG_Highway,Origin)

#Filter

filter(cars,Horsepower>mean(Horsepower))

#Arrange

arrange(cars,desc(MSRP))

#Mutate

mutate(cars,MSRP_HP=MSRP/Horsepower,MSRP_HP_in=MSRP_HP^-1)

transmute(cars,MSRP_HP=MSRP/Horsepower,MSRP_HP_in=MSRP_HP^-1)

mutate(cars,MSRP_HP=MSRP/Horsepower,MSRP_HP_in=MSRP_HP^-1,.keep='none')

#Summarise

cars %>% select(Origin, Make, Horsepower, MSRP) %>% 
  mutate(MSRP_HP=MSRP/Horsepower,MSRP_HP_in=MSRP_HP^-1) %>% arrange(desc(Horsepower)) 

cars %>% select(Origin, Make, Horsepower, MSRP)

cars %>% select(Origin, Make, Horsepower, MSRP) %>% 
  mutate(MSRP_HP=MSRP/Horsepower,MSRP_HP_in=MSRP_HP^-1)

cars %>% select(Origin, Make, Horsepower, MSRP) %>% 
  mutate(MSRP_HP=MSRP/Horsepower,MSRP_HP_in=MSRP_HP^-1) %>% arrange(desc(Horsepower)) 


cars %>% group_by(Origin) %>% summarise(ss=sum(MSRP),avg_hp=mean(Horsepower))


#QQ - Filter cars data only for the cars(make) which start with letter 'S' and horsepower is more than average

cars %>%  select(Make,Horsepower) %>% mutate(fl=substr(Make,1,1),myavg=Horsepower) %>%
  filter(fl=='S',myavg>mean(Horsepower))

unique(cars$Make)

substr(unique(cars$Make),1,1)=='S'

c_s <- unique(cars$Make)[substr(unique(cars$Make),1,1)=='S']

filter(cars, Make %in% c_s & Horsepower>mean(Horsepower))

cars %>% mutate(fl=substr(Make,1,1),myavg=Horsepower) %>%
  filter(fl=='S',myavg>mean(Horsepower))

install.packages('moments')
library('moments')
skewness(cars$Horsepower)

pnorm(600,494,100)-pnorm(200,494,100)

qnorm(.08,328,92)


pnorm(217,220,1.5)
pnorm(446,448,3)-pnorm(441,448,3)


xbar <- 6.5
CI <- .95
z <- qnorm((1-CI)/2)
psd <- 3.2
n <- 100

mu1 <- xbar + z*(psd/sqrt(n))

mu2 <- xbar - z*(psd/sqrt(n))

mu1
mu2



n <- 15
xbar <- 10.37
CI <- .95
t <- qt((1-CI)/2,n-1)
s <- 3.5


mu1 <- xbar + t*(s/sqrt(n))

mu2 <- xbar - t*(s/sqrt(n))

mu1
mu2

nielsen <- read.csv(file.choose())

nielsen[1:5,]

nielsen

n <- nrow(nielsen)
n
xbar <- mean(nielsen$Hours)
xbar
psd <- 3.5
ci <- .95
z <- qnorm((1-ci)/2)
z
mu1 <- xbar + z*(psd/sqrt(n))

mu2 <- xbar - z*(psd/sqrt(n))

mu1
mu2
t <- qt((1-ci)/2,n-1)
s <- sd(nielsen$Hours)
mu1 <- xbar + t*(s/sqrt(n))

mu2 <- xbar - t*(s/sqrt(n))

mu1
mu2














