# Cumulative distribution functions (CDFs)

# Every continuous distribution has a cdf, or the proportion of the
# data below a given value a for all vallues of a 
# F(a) = Pr(x <= a)
# (height values a on x axis, proportion of students shorter than a on y axis)
# Any continuous dataset has a CDF, not only normal distributions 

# Essential for calculating probabilities related to continuous data
# In a continous dataset, the probability of a specific exact value 
# is not informative because most entries are unique 
# So if we computed exact probs, prob(69) >>>> prob(69.1)
# which doesnt match expectation that heights are continuous 

# For non-normal datasets, the CDF can be calculated manually 
# by defining a function to compute the probability above 
# This function can then be applied to a range of values 
# across the range of the dataset to calculate a cdf 
# eg...
library(dslabs)
data(heights)
# Define range of values to span the dataset
a <- seq(min(heights$height), max(heights$height), length = 100) 
cdf <- function(x) {
  mean(heights$height <= x)
}
cdf_vals <- sapply(a, cdf)
plot(a, cdf_vals)


# Proportion of values above a: 1 - F(a)
heights$height <= 70