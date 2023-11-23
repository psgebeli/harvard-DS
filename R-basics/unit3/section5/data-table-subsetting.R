# Subsetting with data.table

# dplyr: filter(murders, rate <= 0.7)
# data.table: (knows that rate refers to a column and not an obj in env)
murders[rate <= 0.7]

# Notice that we can combine filter() and select() into 1 command 
murders[rate <= 0.7, .(state, rate)]

# vs dplyr..
# murders %>% filter(rate < 0.7) %>% select(state, rate)