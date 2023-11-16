# Group then summarize

# Common operation: split data into groups, then compute summaries for each grp
# E.g we might want to complete median murder rate in each region
# Funct group_by() helps us do this 

murders %>% group_by(region)

# Doesnt look much difference except for the region [4]..
# Not immediately obvious, this is now a special dataframe called a 
# grouped data frame. Dyplr functions behave differently when acting on these 
# Conceptually, its a table as many tables with the same #columns, but not
# necessarily the same #rows, stacked together in one object

murders %>%
  group_by(region) %>%
  summarize(median = median(rate))