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


#save.image(file = "file/RData")
#save(obj1, obj2, file="file.RData")
#load(file = "file.RData")


### Day 3 ###

coffee_data <- read.table("https://fernandocorrer.github.io/fhc-www/tutorials/2022_10_RTraining/data/FAOSTAT_Production_2019.csv",
                          sep="\t",
                          header = TRUE,
                          stringsAsFactors = FALSE)
str(coffee_data)


if (2>3) {
  cat("two is greater than three")
} else {
  cat("two is less than three")
}

mean_production <- mean(coffee_data[,12])

if(coffee_data[8,12] >= mean_production){
  cat("WOW! Great production")
} else {
  cat("Let's increase")
}

dim(coffee_data)

# Repetition
for(i in 1:10){
  print(i)
}

test <- vector(length = 10)
for(i in 1:10){
  test[i] <- i + 2
}
test


for(coffee in 1:nrow(coffee_data)){
  if(coffee_data[coffee,12] >= mean_production){
    print("WOW! Great production")
  } else {
    print("Let's increase")
  }
}

for(row in 1:nrow(coffee_data)){
  if(coffee_data$REGION[row]=="Australia"){
    coffee_data$REGION[row] = "Oceania"
    }  
}

# While
x = 1
while(x < 5){
  print(x)
  x = x + 1
}

x = 1
while(x < 5){
  print(x)PS
  x = x + 1
  if(x==4){
    break
  }
}

# Repeat
x = 1
repeat{
  print(x)
  x = x+1
  if(x==4) break
}















