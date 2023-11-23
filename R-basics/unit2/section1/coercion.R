# Vector Coercion

# Coercion - an attempt by R to be flexible. When an entry doesnt match the 
# expectation, R tries to fix it

# Vectors must be all the same type
x <- c(1, "canada", 3)
x

# In the above example, R has converted (or coerced) the 1 and the 3 into
# characters. If it didn't, we would get an error for trying to make a vector 
# out of characters and numerics. 
# "R coerced the data into a character string."

class(x)

# R offers functions to force coercion. For example, as.character() and 
# as.numeric()
x <- 1:5

y <- as.character(x)
y

y <- as.numeric(y)
y

# In R, we have a special value for missing data -- its the NA (not available)
# We can get NAs from coercion failures.
# Look below. R has no idea what to do with b
x <- c("1", "b", "3")
as.numeric(x)

# Very common in real life datasets for missing data.