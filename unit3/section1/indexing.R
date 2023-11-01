# R provides powerful ways to index vector, for example 
# subsetting a vector based on properties of another.

library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population * 100000

# Italy has 0.71 per 100,000. An italian wants to move to the US, to a state
# with a similar rate or lower.

# Using logical operators to index vectors: 
index <- murder_rate <= 0.71
murders$state[index]

# Note that sum produces the number of Trues, since TRUE and FALSE are
# coerced to 0 and 1, respectively
sum(index)

# Suppose we like the mountains and want to move to a safe state with mountains
# aka a state in the west.
# Murder rate: less than 1 
# Use '&' logical operator
west <- murders$region == "West"
safe <- murder_rate <= 1
index <- safe & west
murders$state[index]