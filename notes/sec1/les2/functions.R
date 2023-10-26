# Functions require (), otherwise they just print the associated code 
# For example, instead of ls, 
ls()

# ls() shows all objects in the workspace

# Can apply functions to variables or numbers (for applicable functions 
# like log)
a <- 1
b <- 1 
c <- -1
log(a)

# Functions can also be nested. For example, instead of 
exp(1)
log(2.718282) 
# we can use 
log(exp(1))

# Can learn about functions using the help feature, which shows up in the help
# tab on RStudio
# help("function_name")
# help("log")
# Identically, can use the short hand ?function for most functions
?log

# If you already know how a function works but want to recall the 
# arguments it takes, use args(function)
args(log)

# Can also change base values of functions
# log(x) accepts a base arg which defaults to 1, but can change it
# If no argument names are specified, R assumes you are providing arguments 
# in the order specificied in the function's help file (or by args)
log(8, base = 2)
log(8, 2)

# There are some exceptions to functions needing parenthesis
# The main exceptions are arithmetic and relational operators 
?"^"
2^3


# Functions are not the only predefined objects, there are also datasets!
data() 

# Example 
CO2

# Also some mathematical terms, such as pi or infinity
pi
Inf


# Variable names 
# Variables have been simple until now, but they can be almost anything
# Prioritize readability

# Rules :
# Start with a letter 
# Can't contain spaces 
# Avoid using names that are predefined in R

# solution_1 <- (-b + sqrt(b^2 - 4*a*c)) / (2*a)
# solution_2 <- (-b - sqrt(b^2 - 4*a*c)) / (2*a)

# We will put our code into scripts 