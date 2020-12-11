# Swirl Courses
# Session 1


install.packages("swirl")
library("swirl")
swirl()
navid
1
2
1
1
5+7
x <- 5+7
x
y <- x-3
y
z<-c(1.1,9,3.14)
?c
z
c(z,555,z)
z*2+1000
my_sqrt <- sqrt(z-1)
3
my_sqrt
my_div <- z/my_sqrt
3
my_div
c(1,2,3,4)+c(0,10,100)
my_div
my_div
2
navvidmohseni@gmail.com
1
getwd()
ls()
x <- 9
ls()
list.files()
?list.files
rm(list = ls())
args(list.files)
old.dir <- getwd()
dir.create("testdir")
setwd("testdir")
file.create("mytest.R")
args("mytest.R")


# Session 2

library("swirl")
swirl()
Navid
1
6
x
x[1:10]
x[is.na(x)]
y <- x[!is.na(x)]
y
2
y[y>0]
x[x>0]
x[!is.na(x)& x>0]
x[c(3,5,7)]
x[0]
x[3000]
x[c(-2,-10)]
x[-c(2,10)]
vect <- c(foo=11,bar =2, norf=NA)
vect
names(vect)
vect2 <- c (11,2,NA) 
names(vect2) <- c("foo","bar","norf")
identical(vect,vect2)
vect["bar"]
vect[c("foo","bar")]
1

# Session 3

my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4,5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(1:20,4,5)
identical(my_matrix,my_matrix2)
patients <- c("Bill","Gina","Kelly","Sean")
cbind(patients,my_matrix)
my_data <- data.frame(patients,my_matrix)
my_data
class(my_data)
cnames <- c("patient","age","weight","bp","rating","test")
colnames(my_data) <- cnames
my_data
1
quit()


#Session Four


1
8
TRUE==TRUE
(FALSE==TRUE)==FALSE
6==7
10<=10
3
4
5!=7
!(5==7)
3
1
FALSE&FALSE
TRUE && c(TRUE,FALSE,FALSE)
TRUE || c(TRUE,FALSE,FALSE)
5>8 || 6!=8 && 4>3.9
4
2
3
isTRUE(6>4)
1
1
identical('twins','twins')
2
xor(5 == 6,!FALSE)
2
ints <- sample(10)
ints
ints > 5
which(ints > 7)
1
any(ints<0)
all(ints>0)
4
4
1
1

library("swirl")
install_course('dhduncan','ConoceR')
source("http://wush978.github.io/R/init-swirl.R")
?InstallCourses
library("swirl")


# Session 3


swirl()
navid
2
9

Sys.Date()
mean(c(2,4,5))
boring_function

