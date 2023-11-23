# dplyr -- intuitive functionality for working with tables  

library(dplyr)
library(dslabs)

# Mutate --> add new cols or change existing one 
# dataframe as 1st arg, name/value of variable in second arg
# Knows to look for vars in dataframe, rather than workspace
# (no need for murders$population)

murders <- mutate(murders, rate = total/population * 100000)
head(murders)

# filter --> filter data by subsetting rows 
# Suppose we want to filter to only show entries for which rate is 
# lower than 0.71 
# datatable as first arg, condition as 2nd
# similarly, looks in dataframe, not workspace

filter(murders, rate <= 0.71)

# Select --> filter data by selecting specific columns 
# some datatables have 100s of columns, so its often useful to select 1
# first arg is datatable, next args are variable names to select
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

# Pipe operator --> send info to another function %>%
# dyplr assumes that whatever is being piped is what should be operated on 
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)


