
# Note that our us_murder_rate is a dataframe despite being one value 
us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5)

# Might be problematic if you want to work with functions that require
# a numeric value 
# dplyr pull() fixes this 

us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  pull(rate)
us_murder_rate

class(us_murder_rate)