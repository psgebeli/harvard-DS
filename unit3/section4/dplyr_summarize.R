# Summary statistics : median, mean, standard deviation

# Functions to look at in dplyr : group_by, summarize, arrange 

library(tidyverse)
library(dslabs)
library(dplyr)

# Summarize funct in dplyr provides a way to compute summary statistics with
# intuitive and readable code ( a table )

data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# Compute minimum, median, maximum murder rates for western states 
s <- murders %>% 
  filter(region == "West") %>%
  summarize(minimum = min(rate), median = median(rate), maximum = max(rate))

s

# We stored the summarize table in s, and its a dataframe 
# meaning we can access elements 
s$median

# Suppose we want to compute murder rate for entire country 
# mean(murders$rate) would not work, since some states should be weighed more 

us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5)

us_murder_rate

