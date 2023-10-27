# 2.2 | Sorting

# Want to rank states from least to most dangerous based on murder rates
# Sort() sorts a vector in increasing order

library(dslabs)
data(murders)
sort(murders$total)

# Does not give info about states, just the totals

# order() is closer to what we want 
# order() returns the indices that sort the vector
x <- c(31, 4, 15, 92, 65)
sort(x)
index <- order(x)
x[index]

# The index set sorts x 
order(x)

# Apply this to murders
# Note that the entries of vectors follow the same order as the rows in the
# table (i.e the vectors indices match with the other's)
murders$state[1:10]
murders$abb[1:10]

# Can order like so 
index <- order(murders$total)
murders$abb[index]

# max() returns the entry with the largest value 
# which.max() returns the index of the max
# similarly for min() and which.min()
max(murders$total)
i_max <- which.max(murders$total)
murders$state[i_max]

# For any given list, rank() returns a vector with 
# the rank of the first entry, second, etc.
x
rank(x)

# Here, 31 is ranked 3 because its the 3rd lowest, 4 is ranked 1st since its the 
# lowest, etc. It ranks lowest as 1 and highest as length(x)

 

