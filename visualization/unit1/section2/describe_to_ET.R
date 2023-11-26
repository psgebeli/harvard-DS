# Describe heights to ET

# Introduction to a motivational problem

# Pretend we have to describe classmate's heights to ET, the alien 
# As a first step, we need data. We asked students to report height in in
# and provide sex information
# Collect, store in dataframe 
library(dslabs)
data(heights)
head(heights)

# One way to convey heights is to just send the data frame, but there 
# are much more effective ways 
# First, focus on male heights 
# The most basic statistical summary of a list of objects/numbers is its
# distribution -- a compact description of a list with many elements 

# For categorical data, distribution simply. describes the proportions of
# each category, such as...
# Frequency table --> simplest form of a distribution 
prop.table(table(heights$sex))

# No need to visualize since one number tells us everything we need
# to know. for more categories, a bar plot describes the distribution
# But it doesnt provide much more insights than the table itself, but it is
# visually nice and a succinct summary

# Numerical data is much more challenging 
# Not categorical --> frequency of each entry is not effective 
# since most entries are unique!
# A more useful way to define a numerical distribution is to define a 
# function that reports the proportion of the data below a value A 
# for all possible values of A
# Cumulative distribution function (CDF)
# F(a) = Pr(x <= a) where Pr is proportion 

# Then, F(b) - F(a) = proportion of values between a and b
# So if we send this to ET, he will have all info needed!

# Because cdfs can be determined mathematically, not just via data, 
# there are empirical CDFs (ECDFs) 

# CDF is great, but the plot is actually not popular in practice 
# because it does not easily convey characteristics of interest,
# like symmetry, center value, etc.. histograms are preferred
# Sacrifice some info --> easier to interpret plots 
# Divide span of data into non-overlapping bins of same size 
# For each bin, count values that fall in that interval 
# eg 53.5 to 54.5 inches, 54.5 to 55.5, etc 
# But we lose some info -- no difference between 64, 64.1 ...



