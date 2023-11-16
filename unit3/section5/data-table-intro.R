# We have been using tidyverse for its readability and ease of use,
# but there are other ways to more quickly wrangle/analyze large data

# data.table package is very popular

library(data.table)
library(dslabs)

data(murders)

# Step 1: convert data frame into data.table object

murders <- setDT(murders)

# Selecting with data.table is similar to with matrices 
# dplyr: select(murders, state, region)
# data.table: 
murders[, c("state", "region")] |> head()

# .() alerts R that variables inside () are column names, not objects in env
murders[, .(state, region)] |> head()

# dplyr: murders <- mutate(murders, rate = total / population * 100000)
# data.table : (avoids new assignment) update by reference
# adds new column (doesnt need quotes)
murders[, rate := total / population * 100000]
head(murders)

# can take many args
murders[, ":="(rate = total / population * 100000, rank = rank(population))]
head(murders)

# Warning: data.table designed to avoid wasting memory
# so if you do this..
x <- data.table(a = 1)
y <- x

# y is referencing x (another name for x) -- its NOT a new object
# but := changes by reference
x[, a := 2]
y
# y also changes!

# You can also change x like this
y[, a := 1]
x

# To avoid this, use copy to strictly create new object
x <- data.table(a = 1)
y <- copy(x)
x[, a := 2]
y
