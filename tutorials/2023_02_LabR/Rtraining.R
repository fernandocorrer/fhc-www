# Comments
cat("Hello World!")

# Find wd
getwd()

# Set wd
setwd("/Users/fhcorrer/Documents/RTraining/")

(13+2+1.5)/3

((13+2+1.5)/3 + log(96, base = 4))


?log  
?geom_point 

?c  
c(1,2,3,4,5)  
c("apple","banana")

# Sequence of numbers
1:10
seq(1,10, by=2)
seq(100,10)
100:10
rep(3:5, each=2)
rep(3:5,2)

1+1
2+1
seq(1,10)+1
c(1,2,3,4)*2

# Object
x <- c(30.1, 30.4, 40, 30.2, 30.6, 40.1)
c(30.1, 30.4, 40, 30.2, 30.6, 40.1) -> x
x = c(30.1, 30.4, 40, 30.2, 30.6, 40.1)
x*2

NA

### Day 2 ###
x = c(30.1, 30.4, 40, 30.2, 30.6, 40.1)
y = c(0.26, 0.3, 0.36, 0.24, 0.27, 0.35)

z=(x+y)/2
z

# Indexing
z[2:4]

# str
str(z)

# characters
clone <- c("GRA02","URO01", "URO03", "GRA02", "GRA01", "URO01")
str(clone)

# factors
clone_factor <- as.factor(clone)
str(clone_factor)
levels(clone_factor)

# 
logical <- x > 40
logical
which(logical)
x[which(logical)]
x[x>=40]

clone=="GRA01"
clone %in% c("GRA01","GRA02")

#Warnings 
a <- 1:10
a
b = seq(from=0.1, to=1, 0.1)
c <- b*10
c
a==round(c)
str(a)
str(c)


problem <- c(TRUE, "vish", 1)
problem

# Matrix
X <- matrix(1:12, nrow = 6, ncol = 2, byrow = T)
X

W <- matrix(c(x, y), nrow = 6, ncol = 2)
W


X*2
X%*%t(X)

# Data frame
field1 <- data.frame("clone"=clone,
                     "height"=x,
                     "diameter"=y,
                     "age"=rep(3:5,2),
                     "harvest"=logical)
field1
dim(field1)

field1[1,1]
field1$age
