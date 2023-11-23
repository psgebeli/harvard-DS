# Conditionals

# Most common in R --> if else 
a <- 0

if(a != 0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}

# General form 
# if(boolean condition){
#   expressions
# }else{
#   alternative expressions
# }

# Real examples 

library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population * 100000

# Which states, if any, have rate < 0.5?
# Conditional protects us against the case where no state matches the condition
ind <- which.min(murder_rate)

if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
} else{
  print("No state has a murder rate that low")
}

# ifelse() function --> args 1. logical 2, 3. possible answers
# true --> 1st answer, false --> 2nd answer

a <- 1
ifelse(a > 0, 1/a, NA)

# Also works on vectors by examing each elt of the vector and returns 
# an answer for each 
a <- c(0, 1, 2, -4, 5)
result <- ifelse(a > 0, 1/a, NA)
result

# This function can also be used to replace all NAs in a vector with 0
data(na_example)
sum(is.na(na_example)) # (145 nas in this vector)
no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))


# any(), all()
# any() --> takes vector of logicals and returns true if any entries are true
z <- c(TRUE, TRUE, FALSE)
any(z)

# all() takes vector of logicals and returns true if ALL are true 
all(z)