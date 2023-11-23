# Vectors have multiple entries, like a column in a dataframe
# One way to make vectors is with c(), or concatenate

# Country codes
codes <- c(380, 124, 818)

# Countries corresponding to these codes 
# Quotes indicate that the entries are characters, not variables
country <- c("italy", "canada", "egypt")

# Sometimes it is useful to name the entries of a vector
codes <- c(italy = 380, canada = 124, egypt = 818)

# Note that in this case, the countries are just names for the entries. The 
# entries themselves are still numeric. 
class(codes)

# We can also assign names to entries with names()

codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")
names(codes) <- country
codes

# Another useful function for building vectors is seq(), or sequence
seq(1,10)

# Seq has a third argument, the spacing to jump 
seq(1, 10, 2)

# For consecutive integers, the following shorthand works 
1:10

# SUBSETTING
# ----------

# We use [] to access elements of a vector 
codes[2]

# Multientry vectors can also be the index. To get the first and third element,
codes[c(1,3)] 

# Sequences are particularly useful for this
codes[1:2]

# If the elements have names, we can also access the entries with their name
codes["canada"]
codes[c("egypt", "italy")]

