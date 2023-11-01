# Indexing functions
# ------------------
library(dslabs)
data(murders)

# which, match, %in%

# which : gives the indices of TRUE indices
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)

# Not NECESSARY in this use case but it decreases size of index
index <- which(murders$state == "Massachusetts")
murder_rate[index]

# match looks for entries in a vector and returns the index needed to access
# them
# Suppose we want to find murder rates for NY, florida, and texas 
index <- match(c("New York", "Florida", "Texas"), murders$state)
murders$state[index]
murder_rate[index]

# %in% tells us whether or not an element in the first arg is in the second arg
x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")

y %in% x

c("Boston", "Dakota", "Washington") %in% murders$state