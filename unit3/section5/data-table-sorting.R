# Sorting data frames 
library(dslabs)
data(murders)
murders <- setDT(murders)


# data.table makes it easy to order rows based on values of a column 
murders[order(population)] |> head()
murders[order(population, decreasing = TRUE)] |> head()

# Nested ordering 
murders[order(region, state)]