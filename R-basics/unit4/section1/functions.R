# Functions

# Experience --> repeated operations 
# E.g is average --> mean()

avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}
x <- 1:100
avg(x)
mean(x)

# Variables defined inside a function are in the lexical scope, i.e
# they are not saved within the workspace

# Final line is returned 

# Functions can have multiple variables/arguments

# Arithmetic or geometric mean 
# Note functions can have default values
avg <- function(x, arithmetic=TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}