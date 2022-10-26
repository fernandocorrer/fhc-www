# 2022-10-19
# Learning R

# First command
cat("Hello World!")

# Operations
1+1
2*3
2^3
4/4
sqrt(4)
log(100)
log(100, base=10) # Log base 10
log10(100)

# First calculation
(13+2+1.5)/3 + log(96, base=4)

(2+2)

# Help
?log
help(log)
?help  
  
# Vector operations
c(1,3,2,5,2)
# Sequence
1:10
# OR
seq(from=0, to=100, by=5)

# Repeated sequences
rep(3:5, 2)

# Math
c(1,4,3,2)*2
c(4,2,1,5)+c(5,2,6,1)

# Objects
x = c(30.1, 30.4, 40, 30.2, 30.6, 40.1)
x
y = c(0.26, 0.3, 0.36, 0.24, 0.27, 0.35)

x+2
x*2
x + y

# Take care
x
x*c(1,2)
x
x*c(1,2,3,4)

# Use both vectors and save in another object
z <- (x+y)/2
z

# Sum
sum(z)

# Mean
mean(z)

# Variance
var(z)


# Indexing
z
z[3]
z[2:4]
z[c(2,4)]

str(z)

# Characters
clone <- c("GRA02", "URO01", "URO03",
           "GRA02", "GRA01", "URO01")
clone

# Factors
clone_factor <- as.factor(clone)
levels(clone_factor)

# Check length
length(clone_factor)
clone_factor

# Logical 
logico <- x > 40
which(logico)
x[which(logico)]
x[which(x>40)]

clone %in% c("URO03", "GRA02")
clone

### Matrix ###
X <- matrix(1:12, nrow = 6, ncol = 2)
X

# Never use elements of different types
FAKEM <- matrix(c(1:11,"12"), 
                nrow = 6, ncol = 2)
FAKEM

# USe vectors
W <- matrix(c(x,y), nrow = 6, ncol = 2)
W

# Matrix calculation
X*2 # Multiply

X*X

# Matrix multiplication
X%*%t(X)

# Index
X[4,2]
X[4,] # All columns
X[,2] # All rows

# Names for rows and for columns
colnames(W) = c("height","diameter")
rownames(W) <- clone 
W

### Data frames ###

field1 <- data.frame("clone"=clone,
                     "height"=x,
                     "diameter"=y,
                     "age"=rep(3:5,2),
                     "harvest"=logico)
field1

# Data from specific column
field1[,"age"]
field1[,4]
field1$age

# Volume
volume = 3.14*(field1$diameter/2)^2*field1$height
volume

# Combine columns
field1 = cbind(field1, volume)
field1

# Structure
str(field1)

# Export data
save.image(file = "day1.RData")

### Day 2 ###

# Load
load("day1.RData")

# Save one object
save(field1, file= "field1.RData")

# Remove object
rm(field1)

# Load object
load(file = "field1.RData")

### Create tables ###
# Write a table
write.table(field1, 
            file="field1.txt",
            sep="\t", 
            dec = ".", 
            row.names = FALSE)


rm(field1)

### Read table ###
field1_txt = read.table(file = "field1.txt",
                        sep="\t", dec = ".", 
           header = TRUE)

### Coffee data ###
coffee_data <- read.table("https://fernandocorrer.github.io/fhc-www/tutorials/2022_10_RTraining/data/FAOSTAT_Production_2019.csv",
                          sep="\t",
                          header = TRUE,
                          stringsAsFactors = FALSE)

# Structure
str(coffee_data)

# Dimensions
dim(coffee_data)

# Head
head(coffee_data)

# Column names
colnames(coffee_data)

# Change column names
colnames(coffee_data) = c("Domain.Code", "Domain", "Area.Code",
                          "Area", "Element.Code", "Element",
                          "Item.Code", "Item", "Year.Code",
                          "Year",
                          "Unit","Value","Flag",
                          "Flag.Description", "Region")
colnames(coffee_data)[1] = "Domain.Code"

### Conditionals ###
# If and else
2>3
if(2>3){
  cat("two is greater than three")
} else {
  cat("two is less than three")
}

# MEan production of coffee
mean_production = mean(coffee_data[,12])
mean_production

if(coffee_data[8,12] >= mean_production){
  cat("Wow! Thanks for saving the world!")
} else {
  cat("Let's increase the production!")
}

# First quantile
first_quant <- quantile(coffee_data$Value)[2]

if(coffee_data[8,12]>=mean_production){
  cat("Wow! Thanks...")
} else if (coffee_data[8,12] >= first_quant){
  cat("You are on the way")  
} else {
  cat("Let's increase the production!")
}

### Repetition structures ###
# For
for(i in 1:10){
  print(i)
}

# Store values
test <- vector()

for(i in 1:10){
  test[i] <- (i + 4)
}
test

### Iterate over coffee data ###
for(i in 1:nrow(coffee_data)){
  if(coffee_data[i,12]>=mean_production){
    print("Wow! Thanks...")
  } else if (coffee_data[i,12] >= first_quant){
    print("You are on the way")  
  } else {
    print("Let's increase the production!")
  }
}

### Check Australia ###

correction = vector()
for(region in 1:79){
  if(coffee_data$Region[region]=="Australia"){
    cat("Please, change the line", region, "to Oceania!\n")
    correction = c(correction, region)
  }
}
coffee_data$Region[correction] = "Oceania"

# Install packages
install.packages("ggplot2")


