# Tibbles 
 
# When summarize() receives the output of group_by(), it somehow knows 
# which rows of the table go with which groups 
# Where is this info stored?

library(dslabs)
data(murders)
murders %>% group_by(region)

# A tibble: 51 x 5 ???
murders %>% group_by(region) %>% class()

# Tidyverse functs like summarize() always return tbl_df
# group_by() returns a special type, grouped_df

# Manipulation verbs select(), filter(), mutate(), arrange() preserve 
# the class of the input
# But tibbles are the default df in tidyverse 
# They are 'modern' dataframes 

# Print for tibble is more readable 
gapminder
as_tibble(gapminder)

# If you subset the columns of a df, you may get back an object that is not a df
class(murders[,1])

# Not the case in tibbles
class(as_tibble(murders)[,1])

# If you want to access the vector that defines a column and not get a df,
# use accessor $
class(as_tibble(murders)$state)

# Tibbles will give you a warning if you try to access a column that doesnt 
# exist
murders$State
#as_tibble(murders)$State

# Dataframe columns must be character, boolean, or numerical
# while tibbles columns can have more complex objects like functions/lists
tibble(id = c(1, 2, 3), func = c(mean, median, sd))

# group_by() returns a grouped tibble 

