# For loops 

# 1 + 2 + ... + n = n(n+1) / 2
# What if we arent sure this is right ?

compute_sn <- function(n){
  x <- 1:n
  sum(x)
}

compute_sn(3)
compute_sn(100)

# What if we want to compute it for n = 1, ..., 25?
# for (i in range of values) { 
#   operations that use i, changing
# }

m <- 25
# Create empty vector to store results as theyre computed
sn <- vector(length = m) 

for (n in 1:m){
  sn[n] <- compute_sn(n)
}
sn

n <- 1:m
plot(n, sn)

# Verify if it matches expectation
lines(n, n*(n+1)/2)